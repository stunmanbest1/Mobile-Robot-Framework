*** Setting ***
Library  AppiumLibrary
Library  DateTime
Library  String
Library  BuiltIn
# Library  Selenium2Library
Library  BuiltIn
Resource    ../../../PageVariable/MyFund/Top_New_Feed/Alpha_Top_New_Feed_Mobile_Variables.robot
Resource    ../../../PageKeywords/MyFund/Top_New_Feed/Top_New_Feed_Mobile_Keywords.robot


*** Test Cases ***
TESTCASE001_Single Feed Broadcast All
    [Tags]  normal
    Open Application  ${URL}  
    ...    udid=${DEVICE_UDIDNOTLOGIN}   
    ...    platformName=${PLATFORM}  
    ...    platformVersion=${DEVICE_TARGET}  
    ...    deviceName=${DEVICE_NotLogin}  
    ...    app=${APP_LOCATION}  
    ...    automationName=appium  
    ...    noReset=true
    Verify Progress Bra
    Press Button Accept Cookie
    Press Icon Notification
    Verify Message Inbox  ${varTopicCase1}  ${varDetailCase1}
    Select Topic  ${varTopicCase1}
    Verify Message Detail In Inbox  ${varTopicCase1}  ${varDetailCase1}
    Verify Button Back
    Press Button Back
    Verify Message Inbox  ${varTopicCase1}  ${varDetailCase1}

TESTCASE002_Single Feed Set Schedule Broadcast All
    [Tags]  normal
    Open Application  ${URL}  
    ...    udid=${DEVICE_UDIDNOTLOGIN}   
    ...    platformName=${PLATFORM}  
    ...    platformVersion=${DEVICE_TARGET}  
    ...    deviceName=${DEVICE_NotLogin}  
    ...    app=${APP_LOCATION}  
    ...    automationName=appium  
    ...    noReset=true
    Verify Progress Bra
    Press Button Accept Cookie
    Press Icon Notification
    Verify Message Inbox  ${varTopicCase2}  ${varDetailCase2}
    Verify Time on Inbox  ${varTimeCase2}
    Select Topic  ${varTopicCase2}
    Verify Message Detail In Inbox  ${varTopicCase2}  ${varDetailCase2}
    Verify Button Back
    Verify Date Time In Message as Schedule  ${varTimeCase2}
    Press Button Back
    Verify Message Inbox  ${varTopicCase2}  ${varDetailCase2}

TESTCASE003_Single Feed Specific Target By Now
    [Documentation]  
    ...  1.อันไหนที่รอ API เดี๋ยวให้ dev ทำให้ เพื่อยิงลบ data
    ...  2.ส่วน OTP พี่กะว่าจะสร้าง id card สำหรับ automate โดยเฉพาะ แล้วให้เค้า fix OTP ให้ ว่าต้องเป็นค่าอะไร
    [Tags]  target_group
    Open Application  
    ...    ${URL}  
    ...    udid=${DEVICE_UDIDLOGIN}  
    ...    platformName=${PLATFORM}  
    ...    platformVersion=${DEVICE_TARGET}  
    ...    deviceName=${DEVICE_NAME}  
    ...    app=${APP_LOCATION}  
    ...    automationName=appium  
    ...    noReset=true
    Verify Progress Bra
    Press Button Accept Cookie
    # Click Accept on Popup Login
    # Login My Fund Mobile  ${UsernameAutomate1}  ${PasswordAutomate1}
    # Input OTP  123456  #รอว่าฟิกให้เป็นค่าอะไร
    # Click Pin 1  1  2  2  3  3 

    Press Icon Notification
    Verify Message Inbox  ${varTopicCase3}  ${varDetailCase3}
    Select Topic  ${varTopicCase3}
    Verify Message Detail In Inbox  ${varTopicCase3}  ${varDetailCase3}

TESTCASE004_Single Feed Specific Target By Schedule
    [Documentation]  
    ...  1.อันไหนที่รอ API เดี๋ยวให้ dev ทำให้ เพื่อยิงลบ data
    ...  2.ส่วน OTP พี่กะว่าจะสร้าง id card สำหรับ automate โดยเฉพาะ แล้วให้เค้า fix OTP ให้ ว่าต้องเป็นค่าอะไร
    [Tags]  target_group
    Open Application  
    ...    ${URL}  
    ...    udid=${DEVICE_UDIDLOGIN}  
    ...    platformName=${PLATFORM}  
    ...    platformVersion=${DEVICE_TARGET}  
    ...    deviceName=${DEVICE_NAME}  
    ...    app=${APP_LOCATION}  
    ...    automationName=appium  
    ...    noReset=true
    Verify Progress Bra
    Press Button Accept Cookie

    Press Icon Notification
    Verify Message Inbox  ${varTopicCase4}  ${varDetailCase4}
    Verify Time on Inbox  ${varTimeCase4}
    Select Topic  ${varTopicCase4}
    Verify Message Detail In Inbox  ${varTopicCase4}  ${varDetailCase4}
    Verify Date Time In Message as Schedule  ${varTimeCase4}
    Verify Button Back


TESTCASE005_Single Feed Specific Contact Us by now
    [Tags]  Contact_us
    Open Application  
    ...    ${URL}  
    ...    udid=${DEVICE_UDIDLOGIN}  
    ...    platformName=${PLATFORM}  
    ...    platformVersion=${DEVICE_TARGET}  
    ...    deviceName=${DEVICE_NAME}  
    ...    app=${APP_LOCATION}  
    ...    automationName=appium  
    ...    noReset=true
    Verify Progress Bra
    Press Button Accept Cookie
    # Click Accept on Popup Login
    # Login My Fund Mobile  ${UsernameAcc3}  ${PasswordAcc3}
    # Input OTP  123456  #รอว่าฟิกให้เป็นค่าอะไร
    # Click Pin   1  1  2  2  3  3
    Press Icon Notification
    Verify Message Inbox  ${varTopicCase5}  ${varDetailCase5}
    Select Topic  ${varTopicCase5}
    Verify Message Detail In Inbox  ${varTopicCase5}  ${varDetailCase5}
    Verify Button Back
    Verify Button Contact Us
    Click Button Contact Us
    Verify Label Header PIN
    Verify Button Back
    Press Button Back
    Verify Message Detail In Inbox  ${varTopicCase5}  ${varDetailCase5}
    Click Button Contact Us
    Click Pin   1  1  2  2  3  3
    Verify Mobile Loading Is Done
    Verify Contact Us VDO CALL  ${varHeaderVDOCALL}  ${varAnnounceVDOCALL}  ${varVDOCALLDetail1}  ${varVDOCALLDetail2}
    Verify Button Start VDO CALL

TESTCASE006_Single Feed Specific Contact Us by schedule
    [Tags]  Contact_us
    Open Application  
    ...    ${URL}  
    ...    udid=${DEVICE_UDIDLOGIN}  
    ...    platformName=${PLATFORM}  
    ...    platformVersion=${DEVICE_TARGET}  
    ...    deviceName=${DEVICE_NAME}  
    ...    app=${APP_LOCATION}  
    ...    automationName=appium  
    ...    noReset=true
    Verify Progress Bra
    Press Button Accept Cookie
    Press Icon Notification
    Verify Message Inbox  ${varTopicCase6}  ${varDetailCase6}
    Verify Time on Inbox  ${varTimeCase6}
    Select Topic  ${varTopicCase6}
    Verify Message Detail In Inbox  ${varTopicCase6}  ${varDetailCase6}
    Verify Button Back
    Verify Date Time In Message as Schedule  ${varTimeCase6}
    Verify Button Contact Us
    Click Button Contact Us
    Verify Label Header PIN
    Verify Button Back
    Press Button Back
    Verify Message Detail In Inbox  ${varTopicCase6}  ${varDetailCase6}
    Click Button Contact Us
    Click Pin   1  1  2  2  3  3
    Verify Mobile Loading Is Done
    Verify Contact Us VDO CALL  ${varHeaderVDOCALL}  ${varAnnounceVDOCALL}  ${varVDOCALLDetail1}  ${varVDOCALLDetail2}
    Verify Button Start VDO CALL
    
TESTCASE007_Single Feed Specific Action buy
    [Tags]  Buy
    Open Application  
    ...    ${URL}  
    ...    udid=${DEVICE_UDIDLOGIN}  
    ...    platformName=${PLATFORM}  
    ...    platformVersion=${DEVICE_TARGET}  
    ...    deviceName=${DEVICE_NAME}  
    ...    app=${APP_LOCATION}  
    ...    automationName=appium  
    ...    noReset=true
    Verify Progress Bra
    Press Button Accept Cookie
    Press Icon Notification
    Verify Message Inbox  ${varTopicCase7}  ${varDetailCase7}
    Select Topic  ${varTopicCase7}
    Verify Message Detail In Inbox  ${varTopicCase7}  ${varDetailCase7}
    Verify Button Back
    Verify Button Interested in Invest
    #ขาด Date
    # Verify Date In Message
    Click Button Interested in Invest
    Verify Label Header PIN
    Verify Button Back
    Press Button Back
    Verify Message Detail In Inbox  ${varTopicCase7}  ${varDetailCase7}
    Click Button Interested in Invest
    Click Pin   1  1  2  2  3  3
    Verify Mobile Loading Is Done
    Verify Default Transaction Screen  ${varActive}  ${varNotActive}  ${varNotActive}  ${varFundCodeTINC-A}  ${varFundCodeTINC-A}  ${varFundNameTINC-A}

TESTCASE008_Single Feed Specific Action buy as schedule
    [Tags]  Buy
    Open Application  
    ...    ${URL}  
    ...    udid=${DEVICE_UDIDLOGIN}  
    ...    platformName=${PLATFORM}  
    ...    platformVersion=${DEVICE_TARGET}  
    ...    deviceName=${DEVICE_NAME}  
    ...    app=${APP_LOCATION}  
    ...    automationName=appium  
    ...    noReset=true
    Verify Progress Bra
    Press Button Accept Cookie
    Press Icon Notification
    Verify Message Inbox  ${varTopicCase8}  ${varDetailCase8}
    Verify Time on Inbox  ${varTimeCase8}
    Select Topic  ${varTopicCase8}
    Verify Message Detail In Inbox  ${varTopicCase8}  ${varDetailCase8}
    Verify Button Back
    Verify Button Interested in Invest
    Verify Date Time In Message as Schedule  ${varTimeCase8}
    Click Button Interested in Invest
    Verify Label Header PIN
    Verify Button Back
    Press Button Back
    Verify Message Detail In Inbox  ${varTopicCase8}  ${varDetailCase8}
    Click Button Interested in Invest
    Verify Button Back
    Click Pin   1  1  2  2  3  3
    Verify Mobile Loading Is Done
    Verify Default Transaction Screen  ${varActive}  ${varNotActive}  ${varNotActive}  ${varFundCodeTINC-A}  ${varFundCodeTINC-A}  ${varFundNameTINC-A}


TESTCASE009_Single Feed Specific Action switch
    [Tags]  Switch
    Open Application  
    ...    ${URL}  
    ...    udid=${DEVICE_UDIDLOGIN}  
    ...    platformName=${PLATFORM}  
    ...    platformVersion=${DEVICE_TARGET}  
    ...    deviceName=${DEVICE_NAME}  
    ...    app=${APP_LOCATION}  
    ...    automationName=appium  
    ...    noReset=true
    Verify Progress Bra
    Press Button Accept Cookie
    Press Icon Notification
    Verify Message Inbox  ${varTopicCase9}  ${varDetailCase9}
    Select Topic  ${varTopicCase9}
    Verify Message Detail In Inbox  ${varTopicCase9}  ${varDetailCase9}
    Verify Button Back
    Verify Button Interested in Invest
    #ขาด Date
    # Verify Date In Message
    Click Button Interested in Invest
    Verify Label Header PIN
    Verify Button Back
    Press Button Back
    Verify Message Detail In Inbox  ${varTopicCase9}  ${varDetailCase9}
    Click Button Interested in Invest
    Verify Button Back
    Click Pin   1  1  2  2  3  3
    Verify Mobile Loading Is Done
    Verify Default Transaction Screen  ${varNotActive}  ${varNotActive}  ${varActive}  ${varFundCodeTEGRMF-A}  ${varFundCodeTEGRMF-A}  ${varFundNameTEGRMF-A}

TESTCASE010_Single Feed Specific Action switch as schedule
    [Tags]  Switch
     Open Application  
    ...    ${URL}  
    ...    udid=${DEVICE_UDIDLOGIN}  
    ...    platformName=${PLATFORM}  
    ...    platformVersion=${DEVICE_TARGET}  
    ...    deviceName=${DEVICE_NAME}  
    ...    app=${APP_LOCATION}  
    ...    automationName=appium  
    ...    noReset=true
    Verify Progress Bra
    Press Button Accept Cookie
    Press Icon Notification
    Verify Message Inbox  ${varTopicCase10}  ${varDetailCase10}
    Verify Time on Inbox  ${varTimeCase10}
    Select Topic  ${varTopicCase10}
    Verify Message Detail In Inbox  ${varTopicCase10}  ${varDetailCase10}
    Verify Date Time In Message as Schedule  ${varTimeCase10}
    Verify Button Back
    Verify Button Interested in Invest
    Click Button Interested in Invest
    Verify Label Header PIN
    Verify Button Back
    Press Button Back
    Verify Message Detail In Inbox  ${varTopicCase10}  ${varDetailCase10}
    Click Button Interested in Invest
    Verify Button Back
    Click Pin   1  1  2  2  3  3
    Verify Mobile Loading Is Done
    Verify Default Transaction Screen  ${varNotActive}  ${varNotActive}  ${varActive}  ${varFundCodeTEGRMF-A}  ${varFundCodeTEGRMF-A}  ${varFundNameTEGRMF-A}


TESTCASE018_multiple feed switch as schedule
    [Tags]  Switch
    Open Application  
    ...    ${URL}  
    ...    udid=${DEVICE_UDIDLOGIN}  
    ...    platformName=${PLATFORM}  
    ...    platformVersion=${DEVICE_TARGET}  
    ...    deviceName=${DEVICE_NAME}  
    ...    app=${APP_LOCATION}  
    ...    automationName=appium  
    ...    noReset=true
    Verify Progress Bra
    Press Button Accept Cookie
    Press Icon Notification
    Verify Message Inbox  ${VarMessageMultipleCase18}  ${VarMessageDetailMultipleCase18}
    # Verify Time on Inbox  ${varTimeCase18}
    Select Topic  ${VarMessageMultipleCase18}
    Verify Message Detail In Inbox  ${VarMessageMultipleCase18}  ${VarMessageDetailMultipleCase18}
    # Verify Date Time In Message as Schedule  ${varTimeCase18}