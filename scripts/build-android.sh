#!/bin/bash
set -e

# XEGG Rust 交叉编译脚本
# 用法: ./scripts/build-android.sh

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
CORE_DIR="$PROJECT_DIR/core"

# NDK 路径
NDK_HOME="${ANDROID_HOME:-$ANDROID_SDK_ROOT}/ndk/27.0.12077973"

if [ ! -d "$NDK_HOME" ]; then
    echo "错误: NDK 未找到于 $NDK_HOME"
    exit 1
fi

export ANDROID_NDK_HOME="$NDK_HOME"

# 设置 Android API level，修复 Lua C 代码 ftello 兼容性
export TARGET_ANDROID_API_LEVEL=24

echo "=== 编译 XEGG Core (Android) ==="

# 编译目标列表
TARGETS=(
    "arm64-v8a:aarch64-linux-android"
    "x86_64:x86_64-linux-android"
)

# armv7 暂时跳过（Lua ftello 兼容问题，后续修复）
# "armeabi-v7a:armv7-linux-androideabi"

JNI_LIBS_DIR="$PROJECT_DIR/app/src/main/jniLibs"

for target_info in "${TARGETS[@]}"; do
    IFS=':' read -r ABI TARGET <<< "$target_info"
    echo "--- 编译 $ABI ($TARGET) ---"

    cd "$CORE_DIR"
    cargo ndk -t "$TARGET" build --release

    # 复制 .so 到 jniLibs
    LIB_DIR="$JNI_LIBS_DIR/$ABI"
    mkdir -p "$LIB_DIR"
    cp "$CORE_DIR/target/$TARGET/release/libxegg.so" "$LIB_DIR/"

    echo "--- $ABI 编译完成 ---"
done

echo "=== 全部编译完成 ==="
ls -la "$JNI_LIBS_DIR"/*/
