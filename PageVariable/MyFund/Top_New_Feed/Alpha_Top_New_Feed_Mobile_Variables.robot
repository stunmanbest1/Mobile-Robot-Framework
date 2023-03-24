*** Variables ***
${URL}  http://127.0.0.1:4723/wd/hub
${URLNOTLOGIN}  http://127.0.0.1:4725/wd/hub
${PLATFORM}  Android
${DEVICE_TARGET}  13.0
${DEVICE_NAME}  Pixel_4_API_33_New:5554  #emulator-5554    #Pixel 4 API 33 New
${DEVICE_NotLogin}  Pixel_4_API_33_For_Not_Login:5556   #Pixel 4 API 33 For Not Login
${DEVICE_UDIDLOGIN}  emulator-5554
${DEVICE_UDIDNOTLOGIN}  emulator-5556
${APP_LOCATION}  ${CURDIR}${/}..${/}..${/}..${/}FileApk${/}app-modeSit-debug.apk


${varTopicCase1}  Automate Send Feed Broadcast all
${varDetailCase1}  Hello everyone, this message from automate test.

${varTopicCase2}  Automate Send Feed as schedule and broadcast all
${varDetailCase2}  Hello everyone, this is message send by schedule from automate test.

${varTopicCase3}  Automate Send Feed Specific Target Group
${varDetailCase3}  Hello Target Group, only this group will get this message.

${varTopicCase4}  Automate Send Feed Specific Target Group by schedule
${varDetailCase4}  Hello Target Group, only this group will get this message. \nYou will get this message on 17:00  \n\nPlease click link below for more detail \nhttps://www.tiscoasset.com/th/home/

${varTopicCase5}  Automate notification contact us action
${varDetailCase5}  Dear value customer \n\nPlease contact us as soon as possible \n\nPlease click link below for more detail \nhttps://www.tiscoasset.com/th/home/  #Dear value customer ...

${varDetailFullCase5}  Dear value customer \n\nPlease contact us as soon as possible \n\nPlease click link below for more detail \nhttps://www.tiscoasset.com/th/home/
${varTopicCase6}   Automate notification contact us by schdule action
${varDetailCase6}  Dear value customer\nPlease contact us as soon as possible\nPlease click link below for more detail\nhttps://www.tiscoasset.com/th/home/

${varTopicCase7}  Automate notification action buy sending now
${varDetailCase7}  Dear value customer\nFund TINC-A meet target top earning 10% in 3 month.\nIf you want to invest on this fund please buy.

${varTopicCase8}  Automate notification action buy send by schedule
${varDetailCase8}  Dear value customer\nFund TINC-A meet target top earning 10% in 3 month.\nIf you want to invest on this fund please buy.

${varTopicCase9}  Automate notification action switch send by now
${varDetailCase9}  Dear value customer\nFund TEGRMF-A will be  terminate soon.\nHighly recommend to switch out.

${varTopicCase10}   Automate notification action switch send by schedule
${varDetailCase10}   Dear value customer\nFund TEGRMF-A will be  terminate soon.\nHighly recommend to switch out.

${VarMessageMultipleCase13#1}  Automate contact us mutiple notification #1
${VarMessageDetailMultipleCase13}  Sample Detail for contact us notification topic 1

${VarMessageMultipleCase13#2}  Automate contact us mutiple notification #2
${VarMessageDetailMultipleCase13#2}  Sample Detail for contact us notification topic 2





${VarMessageMultipleCase14#1}  Automate schedule contact us mutiple notification #1
${VarMessageDetailMultipleCase14}  Sample Detail for schedule contact us notification topic 1

${VarMessageMultipleCase14#2}  Automate schedule contact us mutiple notification #2
${VarMessageDetailMultipleCase14#2}  Sample Detail for schedule contact us notification topic 2

${VarMessageMultipleCase15#1}  Automate mutiple notification Buy#1
${VarMessageDetailMultipleCase15}  Dear value customer,\nFund TINC-A meet target top earning 10% in 3 month.\nIf you want to invest on this fund please buy.

${VarMessageMultipleCase15#2}  Automate mutiple notification Buy#2
${VarMessageDetailMultipleCase15#2}  Dear value customer,\nFund TINC-A win fund award from SET.\nIf you want to invest on this fund please buy.

${VarMessageMultipleCase16#1}   Automate schedule mutiple notification Buy#1
${VarMessageDetailMultipleCase16}   Dear value customer,\nFund TINC-A meet target top earning 10% in 3 month.\nIf you want to invest on this fund please buy.

${VarMessageMultipleCase16#2}  Automate schedule mutiple notification Buy#2
${VarMessageDetailMultipleCase16#2}  Dear value customer,\nFund TINC-A win fund award from SET.\nIf you want to invest on this fund please buy.

${VarMessageMultipleCase17#1}   Automate mutiple notification switch#1
${VarMessageDetailMultipleCase17}   Dear value customer,\nFund TEGRMF-A will be ${SPACE}terminate soon.\nHighly recommend to switch out.

${VarMessageMultipleCase17#2}  Automate mutiple notification switch#2
${VarMessageDetailMultipleCase17#2}  Dear value customer,\nFund rate report for TEGRMF-A was poor performance.\nHighly recommend to switch out.

${VarMessageMultipleCase18#1}   Automate schedule mutiple notification switch#1
${VarMessageDetailMultipleCase18}   Dear value customer\nFund TEGRMF-A will be ${SPACE}terminate soon.\nHighly recommend to switch out.

${VarMessageMultipleCase18#2}   Automate schedule mutiple notification switch#2
${VarMessageDetailMultipleCase18#2}  Dear value customer\nFund rate report for TEGRMF-A was poor performance.\nHighly recommend to switch out.
${varTopicCase11_1}  Automate mutiple notification#1
${varTopicCase11_2}  Automate mutiple notification#2

${varDetailCase11_1}  Simple Detail for notification topic 1
${varDetailCase11_2}  Simple Detail for notification topic 2








${UsernameAcc3}  accuser3
${UsernameAutomate1}  automate1
${PasswordAutomate1}  Tisco#1234
${PasswordAcc3}  Tisco#1234

${varHeaderVDOCALL}  ติดต่อเจ้าหน้าที่ผ่าน VDO CALL
${varAnnounceVDOCALL}  กรุณาเตรียมหลักฐานและอุปกรณ์ดังต่อไปนี้
${varVDOCALLDetail1}  บัตรประชาชนตัวจริงที่ยังไม่หมดอายุ
${varVDOCALLDetail2}  โทรศัพท์มือถือ / แท็บเล็ตที่มีกล้องหน้าพร้อมสัญญาณอินเตอร์เน็ตพร้อมใช้งาน
${varActive}  true
${varNotActive}  false
${varFundCodeTINC-A}  TINC-A
${varFundNameTINC-A}  กองทุนเปิด ทิสโก้ อินคัม พลัส ชนิดหน่วยลงทุน A
${varFundCodeTEGRMF-A}  TEGRMF-A
${varFundNameTEGRMF-A}  กองทุนเปิด ทิสโก้หุ้นทุนเพื่อการเลี้ยงชีพ ชนิดหน่วยลงทุน A

${varTimeCase2}  17:00
${varTimeCase4}  17:00
${varTimeCase6}  17:00
${varTimeCase8}  15:30
${varTimeCase10}  15:40
${varTimeCase18}  17:00
${varTimeCase16}  17:00
${varTimeCase14}  17:00

#C:/Users/เบส/Desktop/TISCO/Mobile App/BestTest/nodeconfig/nodeconfig-android-v11.json
#C:/Users/เบส/Desktop/TISCO/Mobile App/BestTest/nodeconfig/nodeconfig-android-v12.json