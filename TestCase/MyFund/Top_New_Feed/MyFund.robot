*** Setting ***
Library  AppiumLibrary
# Library  Selenium2Library
Library  BuiltIn
Resource    ../../../PageVariable/MyFund/Top_New_Feed/Alpha_Single_Feed_Broadcast_All_Variables.robot
Resource    ../../../PageKeywords/MyFund/Top_New_Feed/Single_Feed_Broadcast_All_Keywords.robot


*** Test Cases ***

TESTCASE001_Single Feed Broadcast All
    Open Application  ${URL}  platformName=${PLATFORM}  platformVersion=${DEVICE_TARGET}  deviceName=${DEVICE_NAME}  app=${APP_LOCATION}  automationName=appium  noReset=true
    Press Button Accept Cookie
    Press Icon Notification
    Verify Message Inbox Record 1  ${varTopicCase1}  ${varDetailCase1}
    AppiumLibrary.Click Element  ${locatAndroidMessageTopicInbox}
    Verify Message Detail In Inbox  ${varTopicCase1}  ${varDetailCase1}
    Verify Button Back
    Press Button Back
    Verify Message Inbox Record 1  ${varTopicCase1}  ${varDetailCase1}

TESTCASE002_Single Feed Set Schedule Broadcast All
    Open Application  ${URL}  platformName=${PLATFORM}  platformVersion=${DEVICE_TARGET}  deviceName=${DEVICE_NAME}  app=${APP_LOCATION}  automationName=appium  noReset=true
    Press Button Accept Cookie
    Press Icon Notification
    Verify Message Inbox Record 1  ${varTopicCase2}  ${varDetailCase2}

    Verify Time on Inbox  17:00
    AppiumLibrary.Click Element  ${locatAndroidMessageTopicInbox}
    Verify Message Detail In Inbox  ${varTopicCase2}  ${varDetailCase2}
    Verify Button Back
    Press Button Back
    Verify Message Inbox Record 1  ${varTopicCase2}  ${varDetailCase2}

TESTCASE003_Single Feed Specific Target By Now
    [Documentation]  
    ...  1.อันไหนที่รอ API เดี๋ยวให้ dev ทำให้ เพื่อยิงลบ data
    ...  2.ส่วน OTP พี่กะว่าจะสร้าง id card สำหรับ automate โดยเฉพาะ แล้วให้เค้า fix OTP ให้ ว่าต้องเป็นค่าอะไร
    Open Application  ${URL}  platformName=${PLATFORM}  platformVersion=${DEVICE_TARGET}  deviceName=${DEVICE_NAME}  app=${APP_LOCATION}  automationName=appium  noReset=true
    Press Button Accept Cookie
    Click Accept on Popup Login

    Login My Fund Mobile  ${UsernameAutomate1}  ${PasswordAutomate1}

    Input OTP  123456  #รอว่าฟิกให้เป็นค่าอะไร
    Click Pin 1  1  2  2  3  3 

    Press Icon Notification
    Verify Message Inbox Record 1  ${varTopicCase3}  ${varDetailCase3}
    AppiumLibrary.Click Element  ${locatAndroidMessageTopicInbox}
    Verify Message Detail In Inbox  ${varTopicCase3}  ${varDetailCase3}

TESTCASE004_Single Feed Specific Target By Schedule
    
