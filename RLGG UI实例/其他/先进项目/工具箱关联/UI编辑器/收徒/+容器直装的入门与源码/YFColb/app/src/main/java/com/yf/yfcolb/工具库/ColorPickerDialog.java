package com.yf.yfcolb.工具库;

/**
 * @author: 远方哥哥
 * 留下版权谢谢
 * @date: 2024/4/30
 */
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.LinearLayout;

public class ColorPickerDialog {
    private Context context;
    private Dialog dialog;
    private GridView gridView;
    private OnColorSelectedListener listener;

    public interface OnColorSelectedListener {
        void onColorSelected(int color);
    }

    public ColorPickerDialog(Context context, OnColorSelectedListener listener) {
        this.context = context;
        this.listener = listener;
    }

    public void show() {
        if (dialog == null) {
            dialog = new Dialog(context);

            LinearLayout layout = new LinearLayout(context);
            layout.setOrientation(LinearLayout.VERTICAL);

            gridView = new GridView(context);
            gridView.setAdapter(new ColorAdapter());
            gridView.setOnItemClickListener((parent, view, position, id) -> {
                listener.onColorSelected(Color.parseColor(((LinearLayout)view).getBackground().toString()));
                dialog.dismiss();
            });
            layout.addView(gridView);

            dialog.setContentView(layout);
            dialog.show();
        }
    }

    private class ColorAdapter extends BaseAdapter {
        @Override
        public int getCount() {
            return colors.length;
        }

        @Override
        public Object getItem(int position) {
            return colors[position];
        }

        @Override
        public long getItemId(int position) {
            return position;
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            LinearLayout layout = new LinearLayout(context);
            layout.setBackgroundColor(Color.parseColor(colors[position]));
            layout.setLayoutParams(new GridView.LayoutParams(50, 50));
            return layout;
        }

        private String[] colors = {"#FF0000", "#FFA500", "#FFFF00", "#008000", "#0000FF", "#4B0082", "#9400D3"};
    }
}