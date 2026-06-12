package com.mucheng.mucuteuix.example.ui;

import android.annotation.SuppressLint;
import android.graphics.drawable.GradientDrawable;
import android.text.Html;
import android.view.Gravity;
import android.view.View;
import android.widget.RelativeLayout;

import com.mucheng.mucuteuix.base.BaseHelper;
import com.mucheng.mucuteuix.component.Column;
import com.mucheng.mucuteuix.component.Popup;
import com.mucheng.mucuteuix.component.Relative;
import com.mucheng.mucuteuix.component.Row;
import com.mucheng.mucuteuix.component.Text;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Date;
import java.util.concurrent.atomic.AtomicBoolean;

public class SeeDI extends Popup {

  private Relative relative;

  private static final int VIEW_ID = 0x1E1317;

  private static final String TEST_URL = "http://gitee.com";

  private static final String TEST_URL_SAFETY = "https://gitee.com";

  private final AtomicBoolean isRunning = new AtomicBoolean(false);

  private Text serverText;

  @Override
  protected void init() {
    super.init();
    setWidth(W());
    setHeight(dip2pxInt(30f));
    setFocusable(false);
    setTouchable(false);
    setAnimation(Animation.Translucent);
    setGravity(Gravity.BOTTOM);
    setContentView(createContentView());
  }

  @SuppressLint("RtlHardcoded")
  private Relative createContentView() {
    relative = Relative()
      .setVisibility(View.GONE)
      .setAlpha(0f)
      .setBackground(
        GradientDrawableBuilder()
          .setColor(hexColor("#22000000"))
      );

    com.mucheng.mucuteuix.component.View view = View()
      .setId(VIEW_ID)
      .setLayoutParams(
        RelativeParams()
          .setWidth(W() / 2)
          .setHeight(dip2pxInt(4))
          .addRule(RelativeLayout.ALIGN_PARENT_BOTTOM, RelativeLayout.TRUE)
      )
      .setBackground(
        GradientDrawableBuilder()
          .setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
          .setColors(hexColor("#B7E66465"), hexColor("#B79198E5"))
          .setRadius(0, dip2pxInt(2), dip2px(2), 0)
      );
    relative.addView(view);

    Row serverRow = Row()
      .setGravity(Gravity.CENTER)
      .setLayoutParams(
        RelativeParams()
          .setHeight(BaseHelper.MatchParent)
          .addRule(RelativeLayout.ABOVE, VIEW_ID)
          .addRule(RelativeLayout.ALIGN_PARENT_LEFT, RelativeLayout.TRUE)
          .setLeftMargin(dip2pxInt(10))
      );
    relative.addView(serverRow);

    com.mucheng.mucuteuix.component.View circle = View()
      .setElevation(30f)
      .setBackground(
        GradientDrawableBuilder()
          .setOrientation(GradientDrawable.Orientation.LEFT_RIGHT)
          .setColors(hexColor("#B7E66465"), hexColor("#B79198E5"))
          .setAllRadius(dip2px(5))
      )
      .setLayoutParams(
        LinearParams()
          .setWidth(dip2pxInt(10))
          .setHeight(dip2pxInt(10))
      );
    serverRow.addView(circle);

    serverText = Text()
      .setText(Html.fromHtml(getNoConnectionServerText()))
      .setTextSize(10f)
      .setTextColor(hexColor("#FFFFFFFF"))
      .setLayoutParams(
        LinearParams()
          .setLeftMargin(dip2pxInt(5))
      );
    serverRow.addView(serverText);

    Column versionContainer = Column()
      .setLayoutParams(
        RelativeParams()
          .setHeight(BaseHelper.MatchParent)
          .addRule(RelativeLayout.ABOVE, VIEW_ID)
          .addRule(RelativeLayout.ALIGN_PARENT_RIGHT, RelativeLayout.TRUE)
          .setRightMargin(dip2pxInt(10))
      );
    relative.addView(versionContainer);

    Text versionText = Text()
      .setGravity(Gravity.RIGHT)
      .setText(Html.fromHtml(getVersionText()))
      .setTextSize(10f)
      .setTextColor(hexColor("#FFFFFFFF"));
    versionContainer.addView(versionText);

    return relative;
  }

  private String getConnectionServerText(long delay) {
    return "<b>MIX Server Ping: <font color=\"#9198E5\">" + delay + "</font> ms</b>";
  }

  private String getNoConnectionServerText() {
    return "<b>MIX Server Ping: <font color=\"#9198E5\">No network connection</font></b>";
  }

  private String getVersionText() {
    return "<b>MIX <font color=\"#9198E5\">[v1.0]</font>  |  MuCuteUIX <font color=\"#9198E5\">[v1.0]</font></b>" +
      "<br/>" +
      "<b>MIX - UI By <font color=\"#9198E5\">SuMuCheng</font> & <font color=\"#9198E5\">SemiLuo</font></b>";
  }

  public SeeDI showSeeDI() {
    relative.build()
      .animate()
      .alpha(1f)
      .withStartAction(new Runnable() {
        @Override
        public void run() {
          relative.setVisibility(View.VISIBLE);
        }
      })
      .setDuration(400L)
      .start();
    isRunning.set(true);
    Thread speedTestThread = new Thread(new Runnable() {

      /** @noinspection CatchMayIgnoreException*/
      @Override
      public void run() {
        while (isRunning.get()) {
          try {
            Thread.sleep(1500L);
          } catch (InterruptedException ignored) {

          }
          if (serverText != null) {
            try {
              Date before = new Date();
              URL url = new URL(TEST_URL);
              HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
              urlConnection.setConnectTimeout(50000);
              urlConnection.setRequestMethod("GET");
              urlConnection.setUseCaches(false);
              urlConnection.connect();
              final long delay = new Date().getTime() - before.getTime();
              Ui(new Runnable() {
                @Override
                public void run() {
                  serverText.setText(Html.fromHtml(getConnectionServerText(delay)));
                }
              });
            } catch (Exception e) {
              if (e instanceof IOException) {
                try {
                  Date before = new Date();
                  URL url = new URL(TEST_URL_SAFETY);
                  HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
                  urlConnection.setConnectTimeout(50000);
                  urlConnection.setRequestMethod("GET");
                  urlConnection.setUseCaches(false);
                  urlConnection.connect();
                  final long delay = new Date().getTime() - before.getTime();
                  Ui(new Runnable() {
                    @Override
                    public void run() {
                      serverText.setText(Html.fromHtml(getConnectionServerText(delay)));
                    }
                  });
                } catch (Exception ignore) {
                  Ui(new Runnable() {
                    @Override
                    public void run() {
                      serverText.setText(Html.fromHtml(getNoConnectionServerText()));
                    }
                  });
                }
              }
            }
          }
        }
      }

    });
    speedTestThread.start();
    return this;
  }

  public SeeDI hideSeeDI() {
    relative.build()
      .animate()
      .alpha(0f)
      .withEndAction(new Runnable() {
        @Override
        public void run() {
          relative.setVisibility(View.GONE);
        }
      })
      .setDuration(400L)
      .start();
    isRunning.set(false);
    return this;
  }

}
