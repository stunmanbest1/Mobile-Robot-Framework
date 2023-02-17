*** Setting ***
Library  AppiumLibrary

*** Variables ***
${URL}  http://127.0.0.1:4723/wd/hub
${PLATFORM}  Android
${DEVICE_TARGET}  13.0
${DEVICE_NAME}  Pixel 4 API 33 Test
${APP_LOCATION}  D:/MyFund/app-modeSit-debug.apk

*** Test Cases ***
Open Android
    Open Application  ${URL}  platformName=${PLATFORM}  platformVersion=${DEVICE_TARGET}  deviceName=${DEVICE_NAME}  app=${APP_LOCATION}  automationName=appium  noReset=true
    Sleep  10s
    Click Element  /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View[2]/android.widget.TabWidget/android.view.View[2]

12312131364163bestbestttttttdsfdfsdfsdf