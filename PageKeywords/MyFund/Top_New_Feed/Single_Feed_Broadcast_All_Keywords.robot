*** Settings ***
Resource    ../../../PageVariable/MyFund/Top_New_Feed/Alpha_Single_Feed_Broadcast_All_Variables.robot
Resource    ../../../PageRepositories/MyFund/Top_New_Feed/Single_Feed_Broadcast_All_Locators.robot


*** Keywords ***

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
    Wait Until Page Contains Element   ${locatAndroidDateonInbox}  timeout=10s
    Text Shoud Be Equal  ${locatAndroidDateonInbox}  ${ExpectValue}

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
    Wait Until Page Contains Element  ${locatLabelPleaseInputPIN}
    AppiumLibrary.Click Element  //*[@resource-id="com.tisconet.ftc.sit:id/btn_pin${Nummber1}"]
    AppiumLibrary.Click Element  //*[@resource-id="com.tisconet.ftc.sit:id/btn_pin${Nummber2}"]
    AppiumLibrary.Click Element  //*[@resource-id="com.tisconet.ftc.sit:id/btn_pin${Nummber3}"]
    AppiumLibrary.Click Element  //*[@resource-id="com.tisconet.ftc.sit:id/btn_pin${Nummber4}"]
    AppiumLibrary.Click Element  //*[@resource-id="com.tisconet.ftc.sit:id/btn_pin${Nummber5}"]
    AppiumLibrary.Click Element  //*[@resource-id="com.tisconet.ftc.sit:id/btn_pin${Nummber6}"]
    Capture Page Screenshot  ClickPin.png
    

 