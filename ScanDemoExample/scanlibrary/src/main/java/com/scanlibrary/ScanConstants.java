package com.scanlibrary;

import android.os.Environment;

/**
 * Created by jhansi on 15/03/15.
 */
public class ScanConstants {

    public final static int PICKFILE_REQUEST_CODE = 1;
    public final static int START_CAMERA_REQUEST_CODE = 2;
    public final static String OPEN_INTENT_PREFERENCE = "selectContent";
    public final static String IMAGE_BASE_PATH_EXTRA = "ImageBasePath";
    public final static int OPEN_CAMERA = 4;
    public final static int OPEN_MEDIA = 5;
    public final static String SCANNED_RESULT = "scannedResult";
    public final static String IMAGE_PATH = Environment
            .getExternalStorageDirectory().getPath() + "/scanSample";

    public final static String SELECTED_BITMAP = "selectedBitmap";
}
