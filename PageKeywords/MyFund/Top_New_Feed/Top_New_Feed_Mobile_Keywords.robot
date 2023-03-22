*** Settings ***
Resource    ../../../PageVariable/MyFund/Top_New_Feed/Alpha_Top_New_Feed_Mobile_Variables.robot
Resource    ../../../PageRepositories/MyFund/Top_New_Feed/Top_New_Feed_Mobile_Locators.robot


*** Keywords ***
Verify Progress Bra
    AppiumLibrary.Wait Until Element Is Visible  //android.widget.ProgressBar[@resource-id="com.tisconet.ftc.sit:id/progressBar"]  timeout=20s

Press Button Accept Cookie
    ${Status}   BuiltIn.Run Keyword And Return Status   AppiumLibrary.Wait Until Element Is Visible  ${locatAndroidButtonAcceptCookie}  timeout=10s
    Run Keyword If   '${Status}'=='True'  Sleep  3s
    Run Keyword If   '${Status}'=='True'  AppiumLibrary.Click Element  ${locatAndroidButtonAcceptCookie}
    Log to Console  Status=${Status} 
    
Press Icon Notification
    AppiumLibrary.Wait Until Element Is Visible  ${locatAndroidIconNotification}  timeout=10s
    AppiumLibrary.Click Element  ${locatAndroidIconNotification}

Verify Message Inbox Record 1
    [Arguments]  ${TopicValue}  ${DetailValue}
    AppiumLibrary.Wait Until Page Contains Element   ${locatAndroidMessageTopicInbox}  timeout=10s
    Sleep  4s
    Text Shoud Be Equal  ${locatAndroidMessageTopicInbox}  ${TopicValue}
    Text Shoud Be Equal  ${locatAndroidMessageDetailInbox}  ${DetailValue}

Verify Message Inbox
    [Arguments]  ${TopicValue}  ${DetailValue}
    AppiumLibrary.Wait Until Page Contains Element   ${locatAndroidMessageTopicInbox}  timeout=10s
    Sleep  4s
    Wait Until Page Contains Element  //android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView[contains(@text,"${TopicValue}")] 
    Wait Until Page Contains Element  //android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView[1][contains(@text,"${DetailValue}")] 

    

Verify Message Detail In Inbox
    [Arguments]  ${TopicValue}  ${DetailValue}
    AppiumLibrary.Wait Until Page Contains Element   ${locatAndroidMessageTopicInboxIn}  timeout=10s
    Sleep  4s
    Text Shoud Be Equal  ${locatAndroidMessageTopicInboxIn}  ${TopicValue}
    Text Shoud Be Equal  ${locatAndroidMessageDetailInboxIn}  ${DetailValue}

Text Shoud Be Equal
    [Arguments]  ${Locator}  ${ExpectValue}
    ${ActualValue}  AppiumLibrary.Get Text   ${Locator}
    BuiltIn.Should Be Equal  ${ActualValue}  ${ExpectValue}

Verify Button Back
    AppiumLibrary.Wait Until Page Contains Element   ${locatAndroidButtonBackInbox}  timeout=10s

Check Font Color Topic
    # ${style}=  Selenium2Library.Get Element Attribute  ${locatAndroidMessageTopicInboxIn}   @style
    # Log To Console  style=${style}


    ${bgcolor}    Execute Javascript    return document.defaultView.getComputedStyle(document.getElementByXpath("${locatAndroidMessageTopicInboxIn}"),null)['background-color']
    Log To Console  bgcolor=${bgcolor}

Press Button Back
    AppiumLibrary.Click Element  ${locatAndroidButtonBackInbox}


Verify Time on Inbox
    [Arguments]  ${ExpectValue}
    # Wait Until Page Contains Element   ${locatAndroidDateonInbox}  timeout=10s
    # Text Shoud Be Equal  ${locatAndroidDateonInbox}  ${ExpectValue}
    Wait Until Page Contains Element   //android.widget.RelativeLayout//*[contains(@text,"${ExpectValue}")]  timeout=20s


Click Accept on Popup Login
    Wait Until Page Contains Element  ${locatMenuTrade}
    AppiumLibrary.Click Element  ${locatMenuTrade}

Login My Fund Mobile
    [Arguments]  ${Username}  ${Password}
    Sleep  2s
    Wait Until Page Contains Element  ${locatUsername}
    Input Text  ${locatUsername}  ${Username}
    Input Text  ${locatPassword}  ${Password}
    AppiumLibrary.Click Element  ${locatButtonLogin}

Input OTP
    [Arguments]  ${OTP}
    Wait Until Page Contains Element  ${locatInputOTP}
    Input Text  ${locatInputOTP}  ${OTP}

Check Button Confirm OTP Disabled
    Wait Until Page Contains Element  ${locatButtonConfirmOTPDisabled}

Click Pin
    [Arguments]  ${Nummber1}  ${Nummber2}  ${Nummber3}  ${Nummber4}  ${Nummber5}  ${Nummber6}
    Sleep  3s
    Wait Until Page Contains Element  ${locatLabelPleaseInputPIN}
    AppiumLibrary.Click Element  //*[@resource-id="com.tisconet.ftc.sit:id/btn_pin${Nummber1}"]
    AppiumLibrary.Click Element  //*[@resource-id="com.tisconet.ftc.sit:id/btn_pin${Nummber2}"]
    AppiumLibrary.Click Element  //*[@resource-id="com.tisconet.ftc.sit:id/btn_pin${Nummber3}"]
    AppiumLibrary.Click Element  //*[@resource-id="com.tisconet.ftc.sit:id/btn_pin${Nummber4}"]
    AppiumLibrary.Click Element  //*[@resource-id="com.tisconet.ftc.sit:id/btn_pin${Nummber5}"]
    AppiumLibrary.Click Element  //*[@resource-id="com.tisconet.ftc.sit:id/btn_pin${Nummber6}"]
    Capture Page Screenshot  ClickPin.png

Verify Mobile Loading Is Done
    # Wait Until Page Does Not Contain Element  //android.widget.FrameLayout/android.widget.FrameLayout[@resource-id="android:id/content"]
    Wait Until Page Does Not Contain Element  //*[contains(@text,"กรุณารอสักครู่")]
    Sleep  5s
    
Verify Button Contact Us
    Wait Until Page Contains Element  ${locatButtonContactUs}
    Capture Page Screenshot  VerifyButtonContactUs.png

Click Button Contact Us
    AppiumLibrary.Click Element  ${locatButtonContactUs}

Verify Label Header PIN
    Wait Until Page Contains Element  //android.widget.LinearLayout[1]/android.widget.TextView[contains(@text,"กรุณากด PIN เพื่อเข้าสู่ระบบ")]
    Capture Page Screenshot  VerifyLabelHeaderPIN.png

Verify Contact Us VDO CALL
    [Arguments]  ${headerTitle}  ${Announce}  ${Detail1}  ${Detail2}
    Sleep  6s
    Wait Until Page Contains Element  ${locatHeaderVDOCALL}
    Text Shoud Be Equal  ${locatHeaderVDOCALL}  ${headerTitle}
    Text Shoud Be Equal  ${locatAnnounceVDOCALL}  ${Announce}
    Text Shoud Be Equal  ${locatDetailVDOCALL1}  ${Detail1}
    Text Shoud Be Equal  ${locatDetailVDOCALL2}   ${Detail2}
    Capture Page Screenshot  VerifyContactUsVDOCALL.png

Verify Button Start VDO CALL
    Wait Until Page Contains Element  ${locatButtonStartVDOCALL}
    AppiumLibrary.Element Should Be Enabled   ${locatButtonStartVDOCALL}

Select Topic
    [Arguments]  ${Topic}
    Sleep  5s
    AppiumLibrary.Click Element  //android.widget.TextView[@resource-id="com.tisconet.ftc.sit:id/tvHeader"][contains(@text,"${Topic}")]

Verify Button Interested in Invest
    Wait Until Page Contains Element    //android.widget.Button[contains(@text,"สนใจลงทุน")]

Verify Date In Message
    ${day}  Get Current Day Mobile
    ${month}  Get Current Month Mobile
    ${GENDATE}  Get Text  //android.widget.ScrollView/android.widget.LinearLayout/android.widget.TextView[2]
    ${string}=    Remove String        ${GENDATE}   ${day}   ${month}    66    เวลา    น.
    ${Time}  Set Variable  ${string}
    ${Time}=    Remove String   ${Time}   ${SPACE}  
    Log to Console  RemoveSPACE${Time}
    ${Time}=  Convert Date  ${Time}  date_format=%H:%M 
    ${Time}=  Convert Date  ${Time}  datetime


    Log to Console   Time.minute${Time.minute}
    ${USEDATE}=  Get Current Date
    ${USEDATE}=  Convert Date   ${USEDATE}  datetime 
    ${LOOPSTART}  Evaluate  ${USEDATE.minute}-5
    Log To Console  LOOPSTART${LOOPSTART}
    Log To Console  USEDATE.minute${USEDATE.minute}   
    ${LOOPEND}  Evaluate  ${USEDATE.minute}+5
    Log To Console  LOOPEND${LOOPEND}
    FOR  ${index}  IN RANGE  ${LOOPSTART}  ${LOOPEND}
        Log To Console  INDEXINDEX${index}
        Exit For Loop If  ${Time.minute} == ${index}
    END

Verify Date Time In Message as Schedule
    [Arguments]  ${Time}
    ${day}  Get Current Day Mobile
    ${month}  Get Current Month Mobile
    ${year}  Get Current Year My Fund
    Wait Until Page Contains Element    //android.widget.ScrollView/android.widget.LinearLayout/android.widget.TextView[2][contains(@text,"${day} ${month} ${year} เวลา ${Time} น.")]


Check Date And Time For Create Date
    ${GENDATE}  Get Text  (//div[@class="card-body"]//tr//td//span[text()="วันที่สร้างหรือแก้ไขข้อมูล"]//parent::*/following-sibling::*[@class="highlight td"]//div//*)[1] 
    ${GENDATE}=  Convert Date  ${GENDATE}  date_format=%d/%m/%Y %H:%M 
    ${GENDATE}=  Convert Date  ${GENDATE}  datetime

    ${USEDATE}=  Get Current Date
    Log To Console  USEDATEUSEDATE${USEDATE} 
    ${USEDATE}=  Convert Date   ${USEDATE}  datetime 
    ${LOOPSTART}  Evaluate  ${USEDATE.minute}-15   
    Log To Console  USEDATE.minute${USEDATE.minute}   
    ${LOOPEND}  Evaluate  ${USEDATE.minute}+15
    FOR  ${index}  IN RANGE  ${LOOPSTART}  ${LOOPEND}
        Exit For Loop If  ${GENDATE.minute} == ${index}
    END

Get Current Day Mobile
   ${today}=  Get Time
   Log To Console  todaytodaytoday${today}
   ${today_formated}=  Convert Date  ${today}  result_format=%d
   ${today_no_padding}=   Replace String Using Regexp   ${today_formated}    ^0    ${EMPTY}
   Log To Console  today${today_no_padding}
   [Return]  ${today_no_padding}

Get Current Month Mobile
    ${currentMonth}  Get Current Date  result_format=%m
    Log to Console    currentMonth${currentMonth}
     ${MONTH}=  BuiltIn.Run Keyword If  '${currentMonth}'=='01'
      ...  BuiltIn.Set Variable  ม.ค.
      ...  ELSE IF  '${currentMonth}'=='02'
      ...  BuiltIn.Set Variable  ก.พ.
      ...  ELSE IF  '${currentMonth}'=='03'
      ...  BuiltIn.Set Variable  มี.ค.
      ...  ELSE IF  '${currentMonth}'=='04'
      ...  BuiltIn.Set Variable  เม.ย.
      ...  ELSE IF  '${currentMonth}'=='05'
      ...  BuiltIn.Set Variable  พ.ค.
      ...  ELSE IF  '${currentMonth}'=='06'
      ...  BuiltIn.Set Variable  มิ.ย.
      ...  ELSE IF  '${currentMonth}'=='07'
      ...  BuiltIn.Set Variable  ก.ต.
      ...  ELSE IF  '${currentMonth}'=='08'
      ...  BuiltIn.Set Variable  ส.ค.
      ...  ELSE IF  '${currentMonth}'=='09'
      ...  BuiltIn.Set Variable  ก.ย.
      ...  ELSE IF  '${currentMonth}'=='10'
      ...  BuiltIn.Set Variable  ต.ค.
      ...  ELSE IF  '${currentMonth}'=='11'
      ...  BuiltIn.Set Variable  พ.ย.
      ...  ELSE IF  '${currentMonth}'=='12'
      ...  BuiltIn.Set Variable  ธ.ค.
    [Return]  ${MONTH}


Get Current Year My Fund
    ${year}   Get Current Date  result_format=%Y
    ${yearBE}   Evaluate  ${year}+543
    Log to Console   yearBE${yearBE}
    ${RemoveStringYearBE}=    Remove String     ${yearBE}   25  26  27
    Log to Console   RemoveStringYearBE${RemoveStringYearBE}
    [Return]  ${RemoveStringYearBE}

Click Button Interested in Invest
    AppiumLibrary.Click Element  //android.widget.Button[contains(@text,"สนใจลงทุน")]

Verify Default Transaction Screen
    [Arguments]  ${Buy}  ${Sell}  ${Trade}  ${SearchDefault}  ${FundListSearch}  ${FundName}
    Wait Until Page Contains Element  //android.view.ViewGroup[@resource-id="com.tisconet.ftc.sit:id/toolbar"]//android.widget.TextView[contains(@text,"ทำรายการ")]  timeout=10s
    Wait Until Page Contains Element  //android.view.ViewGroup[@resource-id="com.tisconet.ftc.sit:id/toolbar"]//android.widget.TextView[contains(@text,"สถานะ")]  timeout=10s
    Wait Until Page Contains Element  //android.widget.LinearLayout[@resource-id="com.tisconet.ftc.sit:id/btnOrderStatus"]//android.widget.ImageView   timeout=10s   #ICON
    Wait Until Page Contains Element  //android.widget.RadioButton[@resource-id="com.tisconet.ftc.sit:id/rdBuy"][@checked="${Buy}"]  timeout=10s
    Wait Until Page Contains Element  //android.widget.RadioButton[@resource-id="com.tisconet.ftc.sit:id/rdSell"][@checked="${Sell}"]  timeout=10s
    Wait Until Page Contains Element  //android.widget.RadioButton[@resource-id="com.tisconet.ftc.sit:id/rdTrade"][@checked="${Trade}"]  timeout=10s
    Wait Until Page Contains Element  //android.widget.EditText[@resource-id="com.tisconet.ftc.sit:id/edtSearch"][contains(@text,"${SearchDefault}")]  timeout=10s
    #Fund List Search
    Wait Until Page Contains Element  //android.widget.TextView[@resource-id="com.tisconet.ftc.sit:id/tvFundName"][contains(@text,"${FundListSearch}")]  timeout=10s
    #Fund Name
    Wait Until Page Contains Element  //android.widget.TextView[@resource-id="com.tisconet.ftc.sit:id/tvFundNameTH"][contains(@text,"${FundName}")]  timeout=10s
    Wait Until Page Contains Element  //android.widget.TextView[@resource-id="com.tisconet.ftc.sit:id/tvFundPrice"]  timeout=10s
