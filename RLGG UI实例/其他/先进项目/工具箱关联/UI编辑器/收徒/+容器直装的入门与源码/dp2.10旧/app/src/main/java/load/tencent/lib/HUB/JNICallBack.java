package load.tencent.lib.HUB;
public class JNICallBack {
	static{
		System.loadLibrary("sgcore");
	}
	public static native int setTP(int x,int y,int z);
	public static native void setHitbox();
    public static native void setHitboxx(int x);
    public static native void setHitboxy(int y);
	public static native void setFly();
	public static native void setAir();
	public static native void setKillaura();
    public static native void setKillauraCPS(int cps);
	public static native void setInfiniteAura();
    public static native void setInfinitCPS(int cps);
	public static native void setRide();
	public static native void setLockBack();
	public static native void setSurround();
	public static native void setAimBat();
    public static native void setAimAssets();
	public static native void setFightBack();
	public static native void setBhop();
	public static native void setAtom();
	public static native void setRender();
	public static native void setSpiderweb();
	public static native void setTread();
	public static native void setJekBack();
	public static native void setFallReturn();
	public static native void setGameMode();
	public static native void setFlySpeed();
	public static native void setScaffold();
    public static native void setScaffoldY(boolean Y);
	public static native void setCrawl();
	public static native void setThrough();
	public static native void setFlyAura();
	public static native void setHightJump();
	public static native void setFarJump();
	public static native void setGodMode();
	public static native void setClickTP();
	public static native void setCallBlock();
	public static native void setLockxyx();
	public static native void setLockHP();
	public static native void setWaterBhop();
    public static native void setdisable();
    public static native void setExplode();
    public static native void setLockY();
    public static native void setblink();
    public static native void setOnPos();
    public static native void setFucker();
    public static native void setInfinitYAura();
    public static native void setInfiniY(int y);
    public static native void setInfiniYCPS(int cps);
    public static native void setTimer(int Speed);
    public static native void setVillager();
    /*********************************************/
    public static native float distance();
    public static native float HP();
    public static native boolean Attack();
}
