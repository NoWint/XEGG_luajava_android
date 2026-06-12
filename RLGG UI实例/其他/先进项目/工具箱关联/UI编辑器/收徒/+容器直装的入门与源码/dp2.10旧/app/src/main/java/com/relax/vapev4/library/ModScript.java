package com.relax.vapev4.library;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class ModScript {
    private TView mod;
    private ArrayList<String> modString = new ArrayList<>();
    private ArrayList<String> modStrings = new ArrayList<>(modString);
    private Ttext[] modText=new Ttext[999];
    private Comparator<String> mc=new com();
    private int[] colorsB={0xFF0000FF, 0xFF0080FF, 0xFF00FFFF, 0xFF00FF80, 0xFF00FF00, 0xFF80FF00, 0xFFFFFF00, 0xFFFF8000, 0xFFFF0000,0xFF0000FF};
    private String addText;
    private String removeText;
    private int removeList;
    private int insertIndex;
    private int value;
    public ModScript(Context context){
        mod = new TView(context).gravity("RT").ori(1).setBgD("#00000000",0,"TB",0).WH(-2,(int)(local.H()));
        Tpopup modPop = new Tpopup().Anim("In").SC(false).SF(false).ST(false).SO(false).WH(-2,(int)(local.H())).gravity(mod,"RC",local.dip2px(0),0);
    }
    /*添加第一个参数是前面的文本，第二个是配置(如果配置为空填null就行)*/
    public ModScript AddText(String add,String p){
        if (p!=null) {
            addText = add + "[" + p + "]";
            modString.add(add + "[" + p + "]");
            modStrings.add(add + "[" + p + "]");
        }else {
            addText = add;
            modString.add(add);
            modStrings.add(add);
        }
        update(true);
        return this;
    }
    /*删除第一个参数是前面的文本，第二个是配置(如果配置为空填null就行)*/
    public ModScript RemoveText(final String remove,final String p){
        if (p!=null) {
            removeText = remove + "[" + p + "]";
            animator();
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                @Override
                public void run() {
                    modString.remove(remove + "[" + p + "]");
                    modStrings.remove(remove + "[" + p + "]");
                    update(false);
                }
            }, 500);
        }else {
            removeText = remove;
            animator();
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                @Override
                public void run() {
                    modString.remove(remove);
                    modStrings.remove(remove);
                    update(false);
                }
            }, 500);
        }
        return this;
    }
    /*重新设置文本，前两个参数是之前的文本，后面两个是重新设置的文本，所以说需要两个变量一个在更改前的值，一个为更改后的值*/
    public ModScript SetText(String set1,String p1,String set2,String p2){
        modString.remove(set1+"["+p1+"]");
        modStrings.remove(set1+"["+p1+"]");
        modString.add(set2+"["+p2+"]");
        modStrings.add(set2+"["+p2+"]");
        update(false);
        return this;
    }
    private void update(boolean b){
        insertIndex = 1;
        mSort();
        mod.removeAllViews();
        for (int i=0;i<modString.size();i++){
            modText[i]=new Ttext(mod.getContext()).Text(local.FontColor("§l"+modString.get(i))).gravity("RC").Size(17).Shadow(4, -5, 1, "#000000").children(mod);
            modText[i].setTextColor(value);
            modText[i].setLayoutParams(new LinearLayout.LayoutParams(-2,-2));
            final int finalI = i;            
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        ValueAnimator animator = ObjectAnimator.ofInt(modText[finalI], "textColor", colorsB);
                        animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                                @Override
                                public void onAnimationUpdate(ValueAnimator animation) {
                                    value = (int) animation.getAnimatedValue();
                                }
                            });
                        animator.setDuration(6000);
                        animator.setEvaluator(new ArgbEvaluator());
                        animator.setRepeatCount(1);
                        animator.setRepeatMode(ValueAnimator.RESTART);
                        animator.start();
                    }
                },i*150);
        }
        if (b){
            for (int i = 0; i < modString.size();i++) {
                if (modString.get(i).equals(addText)) {
                    insertIndex = i;
                    local.UILevel(modText[insertIndex], null, 100, 0, 500);
                    break;
                }
            }
        }
    }
    private void animator(){
        for (int i = 0; i < modString.size();i++){
            if (modString.get(i).equals(removeText)){
                removeList = i;
                local.UILevel(modText[removeList], null, 0, 100, 500);
                break;
            }
        }
    }
    public void mSort(){
        Collections.sort(modString,mc);
        Collections.sort(modStrings,mc);
    }
    static class com implements Comparator<String> {
        public int compare(String o1, String o2) {
            // TODO Auto-generated method stub
            Paint paint = new Paint();
            Rect rectA = new Rect();
            Rect rectB = new Rect();
            paint.getTextBounds(o1, 0, o1.length(), rectA);
            paint.getTextBounds(o2, 0, o2.length(), rectB);
            return rectB.width() - rectA.width();
        }
    }
}
