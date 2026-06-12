package tc.mctoolbox;

import android.app.Activity;
import android.os.Bundle;
import tc.dedroid.util.DedroidWeb;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TableRow.LayoutParams;
import android.view.View;
import android.graphics.Color;
import android.content.Intent;

public class ExtendActivity extends Activity {
    
    private DedroidWeb.WebPage wp;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }
    @Override
    public void onBackPressed() {}

}
