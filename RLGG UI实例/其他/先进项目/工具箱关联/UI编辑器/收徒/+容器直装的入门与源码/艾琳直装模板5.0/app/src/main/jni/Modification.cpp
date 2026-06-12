#include <jni.h>
#include <MemoryTool.h>

extern "C" 
{
	
	//清空搜索结果
	JNIEXPORT void JNICALL Java_com_eileen_hacker_C_clearResult(JNIEnv *env, jclass cls) {
	   clearResult();                                                     
	}
	
	//设置内存范围
	JNIEXPORT void JNICALL Java_com_eileen_hacker_C_setRange(JNIEnv *env, jclass cls,jint memory) {
	   setRange(memory);                                                 
	}
	
	//设置包名
	JNIEXPORT void JNICALL Java_com_eileen_hacker_C_setPackageName(JNIEnv *env, jclass cls,jstring packageName) {
    const char* str = env->GetStringUTFChars(packageName, NULL);
     char* newStr = strdup(str);
     env->ReleaseStringUTFChars(packageName, str);
	   setPackageName(newStr);                
       free(newStr);
	}
	
	//内存搜索
	JNIEXPORT void JNICALL Java_com_eileen_hacker_C_RangeMemorySearch(JNIEnv *env, jclass cls,jstring value, jint type) {
    const char* str = env->GetStringUTFChars(value, NULL);                 
     char* newStr = strdup(str);
     env->ReleaseStringUTFChars(value, str);
     RangeMemorySearch(newStr,type);     
     free(newStr);
     
	}
	
	//内存偏移搜索
	JNIEXPORT void JNICALL Java_com_eileen_hacker_C_MemoryOffset(JNIEnv *env, jclass cls,jstring value, jint type, jlong offset) {
	const char* str = env->GetStringUTFChars(value, NULL);
    char* newStr = strdup(str);
     env->ReleaseStringUTFChars(value, str);
       MemoryOffset(newStr, type, offset);     
       free(newStr);
       
	}
	
	//内存写入
	JNIEXPORT void JNICALL Java_com_eileen_hacker_C_MemoryWrite(JNIEnv *env, jclass cls,jstring value, jint type, jlong offset) {
	const char* str = env->GetStringUTFChars(value, NULL);
    char* newStr = strdup(str);
     env->ReleaseStringUTFChars(value, str);
	   MemoryWrite(newStr,type,offset);     
       free(newStr);
      
	}
	
	//获取包名pid
	JNIEXPORT int JNICALL Java_com_eileen_hacker_C_getPackageNamePid(JNIEnv *env, jclass cls,jstring packageName) {
    const char* str = env->GetStringUTFChars(packageName, NULL);
     char* newStr = strdup(str);
     env->ReleaseStringUTFChars(packageName, str);
	   int pid = getPackageNamePid(newStr);                
       free(newStr);
       return pid;
	}
	
	//获取搜索结果数量
	JNIEXPORT int JNICALL Java_com_eileen_hacker_C_getResultCount(JNIEnv *env, jclass cls) {
       return getResultCount();
	}
	
	//开启冻结线程
	JNIEXPORT void JNICALL Java_com_eileen_hacker_C_startFreeze(JNIEnv *env, jclass cls) {
       startFreeze();
	}
	
	//关闭冻结线程
	JNIEXPORT void JNICALL Java_com_eileen_hacker_C_stopFreeze(JNIEnv *env, jclass cls) {
       stopFreeze();
	}

}
