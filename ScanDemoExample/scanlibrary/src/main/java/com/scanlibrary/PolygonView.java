package com.scanlibrary;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by jhansi on 28/03/15.
 */
public class PolygonView extends FrameLayout {

    protected Context context;
    private Paint paint;
    private ImageView pointer1;
    private ImageView pointer2;
    private ImageView pointer3;
    private ImageView pointer4;
    private ImageView midPointer13;
    private ImageView midPointer12;
    private ImageView midPointer34;
    private ImageView midPointer24;
    private PolygonView polygonView;

    public PolygonView(Context context) {
        super(context);
        this.context = context;
        init();
    }

    public PolygonView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.context = context;
        init();
    }

    public PolygonView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.context = context;
        init();
    }

    private void init() {
        polygonView = this;
        pointer1 = getImageView(0, 0);
        pointer2 = getImageView(getWidth(), 0);
        pointer3 = getImageView(0, getHeight());
        pointer4 = getImageView(getWidth(), getHeight());
        midPointer13 = getImageView(0, getHeight() / 2);
        midPointer13.setOnTouchListener(new MidPointXTouchListenerImpl(pointer1, pointer3));

        midPointer12 = getImageView(0, getWidth() / 2);
        midPointer12.setOnTouchListener(new MidPointYTouchListenerImpl(pointer1, pointer2));

        midPointer34 = getImageView(0, getHeight() / 2);
        midPointer34.setOnTouchListener(new MidPointYTouchListenerImpl(pointer3, pointer4));

        midPointer24 = getImageView(0, getHeight() / 2);
        midPointer24.setOnTouchListener(new MidPointXTouchListenerImpl(pointer2, pointer4));

        addView(pointer1);
        addView(pointer2);
        addView(midPointer13);
        addView(midPointer12);
        addView(midPointer34);
        addView(midPointer24);
        addView(pointer3);
        addView(pointer4);
        initPaint();
    }

    @Override
    protected void attachViewToParent(View child, int index, ViewGroup.LayoutParams params) {
        super.attachViewToParent(child, index, params);
    }

    private void initPaint() {
        paint = new Paint();
        paint.setColor(getResources().getColor(R.color.blue));
        paint.setStrokeWidth(2);
        paint.setAntiAlias(true);
    }

    public List<PointF> getPoints() {
        PointF point1 = new PointF(pointer1.getX(), pointer1.getY());
        PointF point2 = new PointF(pointer2.getX(), pointer2.getY());
        PointF point3 = new PointF(pointer3.getX(), pointer3.getY());
        PointF point4 = new PointF(pointer4.getX(), pointer4.getY());
        List<PointF> points = new ArrayList<PointF>();
        points.add(point1);
        points.add(point2);
        points.add(point3);
        points.add(point4);
        return points;
    }

    public void setPoints(int width, int height) {
        pointer1.setX(0);
        pointer2.setX(width / 2);
        pointer3.setX(0);
        pointer4.setX(width / 2);
        pointer1.setY(0);
        pointer2.setY(0);
        pointer3.setY(height / 2);
        pointer4.setY(height / 2);
    }

    @Override
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        canvas.drawLine(pointer1.getX() + (pointer1.getWidth() / 2), pointer1.getY() + (pointer1.getHeight() / 2), pointer3.getX() + (pointer3.getWidth() / 2), pointer3.getY() + (pointer3.getHeight() / 2), paint);
        canvas.drawLine(pointer1.getX() + (pointer1.getWidth() / 2), pointer1.getY() + (pointer1.getHeight() / 2), pointer2.getX() + (pointer2.getWidth() / 2), pointer2.getY() + (pointer2.getHeight() / 2), paint);
        canvas.drawLine(pointer2.getX() + (pointer2.getWidth() / 2), pointer2.getY() + (pointer2.getHeight() / 2), pointer4.getX() + (pointer4.getWidth() / 2), pointer4.getY() + (pointer4.getHeight() / 2), paint);
        canvas.drawLine(pointer3.getX() + (pointer3.getWidth() / 2), pointer3.getY() + (pointer3.getHeight() / 2), pointer4.getX() + (pointer4.getWidth() / 2), pointer4.getY() + (pointer4.getHeight() / 2), paint);
        midPointer13.setX(pointer3.getX() - ((pointer3.getX() - pointer1.getX()) / 2));
        midPointer13.setY(pointer3.getY() - ((pointer3.getY() - pointer1.getY()) / 2));
        midPointer24.setX(pointer4.getX() - ((pointer4.getX() - pointer2.getX()) / 2));
        midPointer24.setY(pointer4.getY() - ((pointer4.getY() - pointer2.getY()) / 2));
        midPointer34.setX(pointer4.getX() - ((pointer4.getX() - pointer3.getX()) / 2));
        midPointer34.setY(pointer4.getY() - ((pointer4.getY() - pointer3.getY()) / 2));
        midPointer12.setX(pointer2.getX() - ((pointer2.getX() - pointer1.getX()) / 2));
        midPointer12.setY(pointer2.getY() - ((pointer2.getY() - pointer1.getY()) / 2));
    }

    private ImageView getImageView(int x, int y) {
        ImageView imageView = new ImageView(context);
        LayoutParams layoutParams = new LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        imageView.setLayoutParams(layoutParams);
        imageView.setImageResource(R.drawable.circle);
        imageView.setX(x);
        imageView.setY(y);
        imageView.setOnTouchListener(new TouchListenerImpl());
        return imageView;
    }

    private class MidPointXTouchListenerImpl implements OnTouchListener {

        PointF DownPT = new PointF(); // Record Mouse Position When Pressed Down
        PointF StartPT = new PointF(); // Record Start Position of 'img'

        private ImageView mainPointer1;
        private ImageView mainPointer2;

        public MidPointXTouchListenerImpl(ImageView mainPointer1, ImageView mainPointer2) {
            this.mainPointer1 = mainPointer1;
            this.mainPointer2 = mainPointer2;
        }

        @Override
        public boolean onTouch(View v, MotionEvent event) {
            int eid = event.getAction();
            switch (eid) {
                case MotionEvent.ACTION_MOVE:
                    PointF mv = new PointF(event.getX() - DownPT.x, event.getY() - DownPT.y);
                    if ((mainPointer2.getX() + mv.x + v.getWidth() < polygonView.getWidth()) && (mainPointer2.getX() + mv.x > 0)) {
                        v.setX((int) (StartPT.x + mv.x));
                        StartPT = new PointF(v.getX(), v.getY());
                        mainPointer2.setX((int) (mainPointer2.getX() + mv.x));
                    }
                    if ((mainPointer1.getX() + mv.x + v.getWidth() < polygonView.getWidth()) && (mainPointer1.getX() + mv.x > 0)) {
                        v.setX((int) (StartPT.x + mv.x));
                        StartPT = new PointF(v.getX(), v.getY());
                        mainPointer1.setX((int) (mainPointer1.getX() + mv.x));
                    }
                    Log.d("", "OnTouch event" + (v.getX() + (v.getWidth() / 2)) + "," + (v.getY() + (v.getHeight() / 2)));

                    break;
                case MotionEvent.ACTION_DOWN:
                    DownPT.x = event.getX();
                    DownPT.y = event.getY();
                    StartPT = new PointF(v.getX(), v.getY());
                    break;
                case MotionEvent.ACTION_UP:
                    // Nothing have to do
                    break;
                default:
                    break;
            }
            polygonView.invalidate();
            return true;
        }

    }

    private class MidPointYTouchListenerImpl implements OnTouchListener {

        PointF DownPT = new PointF(); // Record Mouse Position When Pressed Down
        PointF StartPT = new PointF(); // Record Start Position of 'img'

        private ImageView mainPointer1;
        private ImageView mainPointer2;

        public MidPointYTouchListenerImpl(ImageView mainPointer1, ImageView mainPointer2) {
            this.mainPointer1 = mainPointer1;
            this.mainPointer2 = mainPointer2;
        }

        @Override
        public boolean onTouch(View v, MotionEvent event) {
            int eid = event.getAction();
            switch (eid) {
                case MotionEvent.ACTION_MOVE:
                    PointF mv = new PointF(event.getX() - DownPT.x, event.getY() - DownPT.y);

                    if (((mainPointer2.getY() + mv.y + v.getHeight() < polygonView.getHeight()) && (mainPointer2.getY() + mv.y > 0))) {
                        v.setX((int) (StartPT.y + mv.y));
                        StartPT = new PointF(v.getX(), v.getY());
                        mainPointer2.setY((int) (mainPointer2.getY() + mv.y));
                    }
                    if (((mainPointer1.getY() + mv.y + v.getHeight() < polygonView.getHeight()) && (mainPointer1.getY() + mv.y > 0))) {
                        v.setX((int) (StartPT.y + mv.y));
                        StartPT = new PointF(v.getX(), v.getY());
                        mainPointer1.setY((int) (mainPointer1.getY() + mv.y));
                    }

                    Log.d("", "OnTouch event" + (v.getX() + (v.getWidth() / 2)) + "," + (v.getY() + (v.getHeight() / 2)));
                    break;
                case MotionEvent.ACTION_DOWN:
                    DownPT.x = event.getX();
                    DownPT.y = event.getY();
                    StartPT = new PointF(v.getX(), v.getY());
                    break;
                case MotionEvent.ACTION_UP:
                    // Nothing have to do
                    break;
                default:
                    break;
            }
            polygonView.invalidate();
            return true;
        }

    }

    private class TouchListenerImpl implements OnTouchListener {

        PointF DownPT = new PointF(); // Record Mouse Position When Pressed Down
        PointF StartPT = new PointF(); // Record Start Position of 'img'

        @Override
        public boolean onTouch(View v, MotionEvent event) {
            int eid = event.getAction();
            switch (eid) {
                case MotionEvent.ACTION_MOVE:
                    PointF mv = new PointF(event.getX() - DownPT.x, event.getY() - DownPT.y);
                    if (((StartPT.x + mv.x + v.getWidth())  < polygonView.getWidth() && (StartPT.y + mv.y + v.getHeight() < polygonView.getHeight())) && ((StartPT.x + mv.x) > 0 && StartPT.y + mv.y > 0)) {
                        v.setX((int) (StartPT.x + mv.x));
                        v.setY((int) (StartPT.y + mv.y));
                        StartPT = new PointF(v.getX(), v.getY());
                        Log.d("", "OnTouch event" + (v.getX() + (v.getWidth() / 2)) + "," + (v.getY() + (v.getHeight() / 2)));
                    }
                    break;
                case MotionEvent.ACTION_DOWN:
                    DownPT.x = event.getX();
                    DownPT.y = event.getY();
                    StartPT = new PointF(v.getX(), v.getY());
                    break;
                case MotionEvent.ACTION_UP:
                    // Nothing have to do
                    break;
                default:
                    break;
            }
            polygonView.invalidate();
            return true;
        }

    }


}
