# ScanLibrary
ScanLibrary is an android document scanning library built on top of OpenCV, using the app you will be able to select the exact edges and crop the document accordingly from the selected 4 edges and change the perspective transformation of the cropped image.

# Screenshots

<div align="center">

<a href="https://raw.githubusercontent.com/jhansireddy/AndroidScannerDemo/master/ScanDemoExample/screenshots/scanInput.png" />
<img width="23%" src="https://raw.githubusercontent.com/jhansireddy/AndroidScannerDemo/master/ScanDemoExample/screenshots/scanInput.png" alt="Scan Input" title="Scan Input"></img>

<a href="https://raw.githubusercontent.com/jhansireddy/AndroidScannerDemo/master/ScanDemoExample/screenshots/scanPoints.png" />
<img width="23%" src="https://raw.githubusercontent.com/jhansireddy/AndroidScannerDemo/master/ScanDemoExample/screenshots/scanPoints.png" alt="Scan Points" title="Scan Points"></img>

<a href="https://raw.githubusercontent.com/jhansireddy/AndroidScannerDemo/master/ScanDemoExample/screenshots/blackWhiteScannedResult.png" />
<img width="23%" src="https://raw.githubusercontent.com/jhansireddy/AndroidScannerDemo/master/ScanDemoExample/screenshots/blackWhiteScannedResult.png" alt="After Scan" title="After Scan"></img>

<a href="https://raw.githubusercontent.com/jhansireddy/AndroidScannerDemo/master/ScanDemoExample/screenshots/returned_scan_result.png" />
<img width="23%" src="https://raw.githubusercontent.com/jhansireddy/AndroidScannerDemo/master/ScanDemoExample/screenshots/returned_scan_result.png" alt="Scanned Result" title="Scanned Result"></img>

</div>

# Videos

<div align="center" >
<a href="http://www.youtube.com/watch?feature=player_embedded&v=Kl7rRZ79m6k" target="_blank"><img src="https://raw.githubusercontent.com/jhansireddy/AndroidScannerDemo/master/ScanDemoExample/screenshots/scanPoints.png" 
alt="Scan Video" width="40%" border="10" /></a>
</div>

# Using it in your project

* `git clone https://github.com/jhansireddy/AndroidScannerDemo.git` into a standalone dir;
* Create or using your project: `File -> New -> Import module...`;
* As source directory point to: `~/_dirWhereYouClonedAndroidScannerDemo_/AndroidScannerDemo/ScanDemoExample/scanlibrary` and confirm;

- Add the dependency to your main app build.gradle this way: 
```	    
compile project(':scanlibrary')
```
- In your activity or fragment when you want to give an option of document scanning to user then:
Start the scanlibrary ScanActivity, with this the app will go to library, below is the sample code snippet:
Note: preference can be one of OPEN_CAMERA or OPEN_MEDIA or left empty, based on the passed preference the scan library decides to open camera or media or open the scan home page.
```java
       int REQUEST_CODE = 99;
       int preference = ScanConstants.OPEN_CAMERA;
       Intent intent = new Intent(this, ScanActivity.class);
       intent.putExtra(ScanConstants.OPEN_INTENT_PREFERENCE, preference);
       startActivityForResult(intent, REQUEST_CODE);
```

- Once the scanning is done, the application is returned from scan library to main app, to retrieve the scanned image, add onActivityResult in your activity or fragment from where you have started startActivityForResult, below is the sample code snippet:
```java
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == REQUEST_CODE && resultCode == Activity.RESULT_OK) {
            Uri uri = data.getExtras().getParcelable(ScanConstants.SCANNED_RESULT);
            Bitmap bitmap = null;
            try {
                bitmap = MediaStore.Images.Media.getBitmap(getContentResolver(), uri);
                getContentResolver().delete(uri, null, null);
                scannedImageView.setImageBitmap(bitmap);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
```
# License

	Copyright (c) 2016 Jhansi Karee

	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all
	copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
	SOFTWARE.
	

- **IMPORTANT:** This project uses the OPENCV Framework. Download the newest version here 'http://opencv.org/.
