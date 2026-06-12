package load.tencent.lib;
import android.content.Context;
import android.os.Handler;
import com.relax.vapev4.library.ModScript;
import load.tencent.lib.Menu.Combat;
import load.tencent.lib.Menu.Misc;
import load.tencent.lib.Menu.Move;
import load.tencent.lib.Menu.Player;
import load.tencent.lib.Menu.World;
import com.relax.mix.newlibrary.Notice;
public class Load {
    public static Combat Combat;
    public static Move Move;
    public static World World;
    public static Player Player;
    public static Misc Misc;
    public static ModScript mod;
    public static Notice notice;
    public static void Load(final Context mContext) {
        Player = new Player(mContext);
        Move = new Move(mContext);
        World = new World(mContext);
        Combat = new Combat(mContext);
        Misc = new Misc(mContext);
        new Handler().postDelayed(new Runnable() {
                @Override
                public void run() {
                    mod = new ModScript(mContext);
                    notice=new Notice(mContext);
                }
            }, 1000);
    }


}
