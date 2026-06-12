package load.tencent.lib;
import android.content.Context;
import android.view.Gravity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.RelativeLayout.LayoutParams;
import android.view.View.OnLongClickListener;

public class Text {
    public Text(Context mContext,String a, final OnClickListener click, final LinearLayout view,final OnLongClickListener lclick) {
        final TextView title1=new TextView(mContext);
        title1.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.MATCH_PARENT,LayoutParams.WRAP_CONTENT));
        title1.setPadding(15,15,15,15);
        title1.setText(a);
        title1.setTextSize(12);
        title1.setGravity(Gravity.CENTER);
        title1.setTextColor(0xFFFFFFFF);
        view.addView(title1);
        title1.setOnClickListener(new OnClickListener() {
                @Override
                private boolean a=false;
                public void onClick(View v) {
                    if(click!=null){
                        click.onClick(view);
                    }
                    if(!a){
                        a=true;
                        title1.setTextColor(0xff0057E5);
                    }else{
                        a=false;
                        title1.setTextColor(0xFFFFFFFF);
                    }
				}
            });
        title1.setOnLongClickListener(new View.OnLongClickListener() {
                @Override
                public boolean onLongClick(View v) {
                    if(lclick!=null){
                        lclick.onLongClick(view);
                    }
                    return true;
                }
			});
    }
}
