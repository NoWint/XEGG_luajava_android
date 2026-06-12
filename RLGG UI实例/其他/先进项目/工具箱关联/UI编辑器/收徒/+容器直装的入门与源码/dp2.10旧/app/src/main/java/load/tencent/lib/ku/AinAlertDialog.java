package load.tencent.lib.ku;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.view.View;
import android.view.WindowManager;
public class AinAlertDialog {
    public static void showAlertDialog(Context ctx, String title, String text, DialogInterface.OnClickListener callback) {
        AlertDialog dialog = new AlertDialog.Builder(ctx)
            .setTitle(title)
            .setMessage(text)
            .setPositiveButton("确定", callback)
            .create();
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            dialog.getWindow().setType(WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY);
        } else {
            dialog.getWindow().setType(WindowManager.LayoutParams.TYPE_SYSTEM_ALERT);
        }
        dialog.show();
    }
    public static void ListAlertDialog(Context ctx, String title, CharSequence[] items, DialogInterface.OnClickListener callback) {
        AlertDialog dialog = new AlertDialog.Builder(ctx)
            .setTitle(title)
            .setItems(items, callback)
            .setPositiveButton("取消", null)
            .create();
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            dialog.getWindow().setType(WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY);
        } else {
            dialog.getWindow().setType(WindowManager.LayoutParams.TYPE_SYSTEM_ALERT);
        }
        dialog.show();
		
		
    }
    public static void LayoutAlertDialog(Context ctx, String title, DialogInterface.OnClickListener callback, Object obj) {
        AlertDialog dialog = new AlertDialog.Builder(ctx)
            .setTitle(title)
            .setView((View)obj)
            .setPositiveButton("确定", callback)
            .setNegativeButton("取消", null)
            .create();
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            dialog.getWindow().setType(WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY);
        } else {
            dialog.getWindow().setType(WindowManager.LayoutParams.TYPE_SYSTEM_ALERT);
        }
        dialog.show();
		
    }
    public static void SingleChoiceAlertDialog(Context ctx, String title, CharSequence[] items, DialogInterface.OnClickListener callback) {
        AlertDialog dialog = new AlertDialog.Builder(ctx)
            .setTitle(title)
            .setSingleChoiceItems(items, -1, callback)
            .setPositiveButton("确定", null)
            .create();
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            dialog.getWindow().setType(WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY);
        } else {
            dialog.getWindow().setType(WindowManager.LayoutParams.TYPE_SYSTEM_ALERT);
        }
        dialog.show();
    }
    public static void MultiChoiceAlertDialog(Context ctx, String title, CharSequence[] items, boolean[] checkedItems, DialogInterface.OnMultiChoiceClickListener callback) {
        AlertDialog dialog = new AlertDialog.Builder(ctx)
            .setTitle(title)
            .setMultiChoiceItems(items, checkedItems, callback)
            .setPositiveButton("确定", null)
            .create();
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            dialog.getWindow().setType(WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY);
        } else {
            dialog.getWindow().setType(WindowManager.LayoutParams.TYPE_SYSTEM_ALERT);
        }
        dialog.show();
    }
	
}
