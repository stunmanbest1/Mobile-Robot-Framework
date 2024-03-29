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


TESTCASE005_Single Feed Specific Contact Us By Now
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

TESTCASE006_Single Feed Specific Contact Us By Schedule
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
    
TESTCASE007_Single Feed Specific Action Buy
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
    Click Button Interested in Invest
    Verify Label Header PIN
    Verify Button Back
    Press Button Back
    Verify Message Detail In Inbox  ${varTopicCase7}  ${varDetailCase7}
    Click Button Interested in Invest
    Click Pin   1  1  2  2  3  3
    Verify Mobile Loading Is Done
    Verify Default Transaction Screen  ${varActive}  ${varNotActive}  ${varNotActive}  ${varFundCodeTINC-A}  ${varFundCodeTINC-A}  ${varFundNameTINC-A}

TESTCASE008_Single Feed Specific Action Buy As Schedule
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


TESTCASE009_Single Feed Specific Action Switch
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

TESTCASE010_Single Feed Specific Action switch As Schedule
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

TESTCASE011_Multiple Feed Specific Target
    [Tags]  Target   Multiple
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
    Verify Message Inbox  ${varTopicCase11_1}  ${varDetailCase11_1}
    Verify Message Inbox  ${varTopicCase11_2}  ${varDetailCase11_2}
    Select Topic  ${varTopicCase11_1}
    Verify Message Detail In Inbox  ${varTopicCase11_1}  ${varDetailCase11_1}
    Verify Button Back
    Press Button Back
    Select Topic  ${varTopicCase11_2}
    Verify Message Detail In Inbox  ${varTopicCase11_2}  ${varDetailCase11_2}
    Verify Button Back

TESTCASE012_Multiple Feed Specific Target By Schedule
    [Tags]  Target   Multiple
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
    Verify Message Inbox  ${varTopicCase12_1}  ${varDetailCase12_1}
    Verify Message Inbox  ${varTopicCase12_2}  ${varDetailCase12_2}
    Verify Time on Inbox  ${varTimeCase12}
    Select Topic  ${varTopicCase12_1}
    Verify Message Detail In Inbox  ${varTopicCase12_1}  ${varDetailCase12_1}
    Verify Button Back
    Press Button Back
    Verify Message Inbox  ${varTopicCase12_2}  ${varDetailCase12_2}
    Verify Time on Inbox  ${varTimeCase12}
    Select Topic  ${varTopicCase12_2}
    Sleep  5s
    Verify Message Detail In Inbox  ${varTopicCase12_2}  ${varDetailCase12_2}
    Verify Button Back


TESTCASE013_Multiple Feed Contact us
    [Tags]  Contact_us  Multiple
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
    Verify Message Inbox  ${VarMessageMultipleCase13#1}  ${VarMessageDetailMultipleCase13}
    Select Topic  ${VarMessageMultipleCase13#1}
    Verify Message Detail In Inbox  ${VarMessageMultipleCase13#1}  ${VarMessageDetailMultipleCase13}
    Verify Button Contact Us
    Press Button Back
    Verify Message Inbox  ${VarMessageMultipleCase13#2}  ${VarMessageDetailMultipleCase13#2}
    Select Topic  ${VarMessageMultipleCase13#2}
    Verify Message Detail In Inbox  ${VarMessageMultipleCase13#2}  ${VarMessageDetailMultipleCase13#2}
    Verify Button Contact Us
    Click Button Contact Us
    Click Pin   1  1  2  2  3  3
    Verify Mobile Loading Is Done
    Verify Contact Us VDO CALL  ${varHeaderVDOCALL}  ${varAnnounceVDOCALL}  ${varVDOCALLDetail1}  ${varVDOCALLDetail2}
    Verify Button Start VDO CALL


TESTCASE014_Multiple Feed Contact us By Schedule
    [Tags]  Contact_us  Multiple
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
    Verify Message Inbox  ${VarMessageMultipleCase14#1}  ${VarMessageDetailMultipleCase14}
    Verify Time on Inbox  ${varTimeCase14}
    Select Topic  ${VarMessageMultipleCase14#1}
    Verify Message Detail In Inbox  ${VarMessageMultipleCase14#1}  ${VarMessageDetailMultipleCase14}
    Verify Date Time In Message as Schedule  ${varTimeCase14}
    Verify Button Contact Us
    Press Button Back
    Verify Message Inbox  ${VarMessageMultipleCase14#2}  ${VarMessageDetailMultipleCase14#2}
    Verify Time on Inbox  ${varTimeCase14}
    Select Topic  ${VarMessageMultipleCase14#2}
    Verify Message Detail In Inbox  ${VarMessageMultipleCase14#2}  ${VarMessageDetailMultipleCase14#2}
    Verify Button Contact Us
    Click Button Contact Us
    Click Pin   1  1  2  2  3  3
    Verify Mobile Loading Is Done
    Verify Contact Us VDO CALL  ${varHeaderVDOCALL}  ${varAnnounceVDOCALL}  ${varVDOCALLDetail1}  ${varVDOCALLDetail2}
    Verify Button Start VDO CALL

TESTCASE015_Multiple Feed Buy
    [Tags]  Buy  Multiple
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
    Verify Message Inbox  ${VarMessageMultipleCase15#1}  ${VarMessageDetailMultipleCase15}
    Select Topic  ${VarMessageMultipleCase15#1}
    Verify Message Detail In Inbox  ${VarMessageMultipleCase15#1}  ${VarMessageDetailMultipleCase15}
    Verify Button Interested in Invest
    Press Button Back
    Verify Message Inbox  ${VarMessageMultipleCase15#2}  ${VarMessageDetailMultipleCase15#2}
    Select Topic  ${VarMessageMultipleCase15#2}
    Verify Message Detail In Inbox  ${VarMessageMultipleCase15#2}  ${VarMessageDetailMultipleCase15#2}
    Verify Button Interested in Invest
    Click Button Interested in Invest
    Click Pin   1  1  2  2  3  3
    Verify Mobile Loading Is Done
    Verify Default Transaction Screen  ${varActive}  ${varNotActive}  ${varNotActive}  ${varFundCodeTINC-A}  ${varFundCodeTINC-A}  ${varFundNameTINC-A} 

TESTCASE016_Multiple Feed Buy As Schedule
    [Tags]  Buy  Multiple
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
    Verify Message Inbox  ${VarMessageMultipleCase16#1}  ${VarMessageDetailMultipleCase16}
    Verify Time on Inbox  ${varTimeCase16}
    Select Topic  ${VarMessageMultipleCase16#1}
    Verify Message Detail In Inbox  ${VarMessageMultipleCase16#1}  ${VarMessageDetailMultipleCase16}
    Verify Date Time In Message as Schedule  ${varTimeCase16}
    Verify Button Interested in Invest
    Press Button Back
    Verify Message Inbox  ${VarMessageMultipleCase16#2}  ${VarMessageDetailMultipleCase16#2}
    Verify Time on Inbox  ${varTimeCase16}
    Select Topic  ${VarMessageMultipleCase16#2}
    Verify Message Detail In Inbox  ${VarMessageMultipleCase16#2}  ${VarMessageDetailMultipleCase16#2}
    Verify Button Interested in Invest
    Click Button Interested in Invest
    Click Pin   1  1  2  2  3  3
    Verify Mobile Loading Is Done
    Verify Default Transaction Screen  ${varActive}  ${varNotActive}  ${varNotActive}  ${varFundCodeTINC-A}  ${varFundCodeTINC-A}  ${varFundNameTINC-A} 


TESTCASE017_Mutiple Feed Switch
    [Tags]  Switch  Multiple
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
    Verify Message Inbox  ${VarMessageMultipleCase17#1}  ${VarMessageDetailMultipleCase17}
    Select Topic  ${VarMessageMultipleCase17#1}
    Verify Message Detail In Inbox  ${VarMessageMultipleCase17#1}  ${VarMessageDetailMultipleCase17}
    Verify Button Interested in Invest
    Press Button Back
    Verify Message Inbox  ${VarMessageMultipleCase17#2}  ${VarMessageDetailMultipleCase17#2}
    Select Topic  ${VarMessageMultipleCase17#2}
    Verify Message Detail In Inbox  ${VarMessageMultipleCase17#2}  ${VarMessageDetailMultipleCase17#2}
    Verify Button Interested in Invest
    Click Button Interested in Invest
    Click Pin   1  1  2  2  3  3
    Verify Mobile Loading Is Done
    Verify Default Transaction Screen  ${varNotActive}  ${varNotActive}  ${varActive}  ${varFundCodeTEGRMF-A}  ${varFundCodeTEGRMF-A}  ${varFundNameTEGRMF-A}  


TESTCASE018_Multiple Feed Switch As Schedule
    [Tags]  Switch  Multiple
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
    Verify Message Inbox  ${VarMessageMultipleCase18#1}  ${VarMessageDetailMultipleCase18}
    Verify Time on Inbox  ${varTimeCase18}
    Select Topic  ${VarMessageMultipleCase18#1}
    Verify Message Detail In Inbox  ${VarMessageMultipleCase18#1}  ${VarMessageDetailMultipleCase18}
    Verify Date Time In Message as Schedule  ${varTimeCase18}
    Verify Button Interested in Invest
    Press Button Back
    Verify Message Inbox  ${VarMessageMultipleCase18#2}  ${VarMessageDetailMultipleCase18#2}
    Verify Time on Inbox  ${varTimeCase18}
    Select Topic  ${VarMessageMultipleCase18#2}
    Verify Message Detail In Inbox  ${VarMessageMultipleCase18#2}  ${VarMessageDetailMultipleCase18#2}
    Verify Button Interested in Invest
    Click Button Interested in Invest
    Click Pin   1  1  2  2  3  3
    Verify Mobile Loading Is Done
    Verify Default Transaction Screen  ${varNotActive}  ${varNotActive}  ${varActive}  ${varFundCodeTEGRMF-A}  ${varFundCodeTEGRMF-A}  ${varFundNameTEGRMF-A}  



