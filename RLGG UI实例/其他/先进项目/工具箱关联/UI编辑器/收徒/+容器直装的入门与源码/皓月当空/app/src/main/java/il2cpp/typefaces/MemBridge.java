package il2cpp.typefaces;
import androtrainer.MemoryScanner;
import androtrainer.Ranges;
import androtrainer.Flags;

public class MemBridge {
	
	public static MemoryScanner memo = null;

	private static String r;
	
	public static void _init_(){
		if(memo == null)
		{
			memo = new MemoryScanner();
		}
	}
     /*
	  DONT PLACE VALUE INSIDE JAVA CODE XD
	 */
	 
	public static void SpamChat(String s,String r, String e1, String e2){
		if(memo != null)
		{
		    memo.setRanges(new int[]{Ranges.ANONYMOUS});
			memo.searchNumber(s, Flags.DWORD);
			memo.refineNumber(r,Flags.DWORD,4);
			memo.editAll(e1, Flags.DWORD,16);
			memo.editAll(e2, Flags.DWORD,44);
			memo.clearResults();
		}
	}
	
	public static void DroneVertical(String s,String r,String e)
	{
		if(memo != null)
		{
			memo.setRanges(new int[]{Ranges.ANONYMOUS});
			memo.searchNumber(s, Flags.DWORD);
			memo.refineNumber(r,Flags.DWORD,-168);
			memo.editAll(e, Flags.DWORD,-128);
			memo.clearResults();
		}
	}
	 
	public static void DroneVertical2(String a,String b,String c)
	{
		if(memo != null)
		{
			memo.setRanges(new int[]{Ranges.C_ALLOC});
			memo.searchNumber(a, Flags.DOUBLE);
			memo.refineNumber(b,Flags.QWORD,-168);
			memo.editAll(c, Flags.DWORD,-128);
			memo.clearResults();
		}
	}
	
	public static void View(String k,String l, String m, String n){
		if(memo != null)
		{
		    memo.setRanges(new int[]{Ranges.ANONYMOUS});
			memo.searchNumber(k, Flags.DWORD);
			memo.refineNumber(l,Flags.DWORD,8);
			memo.editAll(m, Flags.DWORD,4);
			memo.editAll(n, Flags.DWORD,12);
			memo.clearResults();
		}
	}

	
	public static void Radar(String x,String w,String z)
	{
		if(memo != null)
		{
			memo.setRanges(new int[]{Ranges.ANONYMOUS});
			memo.searchNumber(x, Flags.DWORD);
			memo.refineNumber(w,Flags.DWORD,24);
			memo.editAll(z, Flags.DWORD,48);
			memo.clearResults();
		}
	}
	
	public static void LockMode(String g,String h, String i, String j){
		if(memo != null)
		{
		    memo.setRanges(new int[]{Ranges.ANONYMOUS});
			memo.searchNumber(g, Flags.FLOAT);
			memo.refineNumber(h,Flags.FLOAT,48);
			memo.editAll(i, Flags.FLOAT,24);
			memo.editAll(j, Flags.FLOAT,40);
			memo.clearResults();
		}
	}
	 
	public static void NoCoolDown(String x,String w,String z)
	{
		if(memo != null)
		{
			memo.setRanges(new int[]{Ranges.ANONYMOUS});
			memo.searchNumber(x, Flags.DWORD);
			memo.refineNumber(w,Flags.DWORD,-4);
			memo.editAll(z, Flags.DWORD,-4);
			memo.clearResults();
		}
	}
	
}
