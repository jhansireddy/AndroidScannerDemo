package com.scanlibrary;

import android.os.Build;

/**
 * Created by ReturnTrucks on 4/16/2016.
 */
public class IScannerPermissions {


    public static boolean isSDK_M(){
        if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.M){
            return true;
        }else{
            return false;
        }
    }

    public static final int ISP_GROUP_CAMERA_AND_READ_WRITE_EXTERNAL_STORAGE = 101;
    public static final int ISP_READ_WRITE_EXTERNAL_STORAGE = 202;
}
