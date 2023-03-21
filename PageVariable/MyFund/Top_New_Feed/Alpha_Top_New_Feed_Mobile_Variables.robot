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

#C:/Users/เบส/Desktop/TISCO/Mobile App/BestTest/nodeconfig/nodeconfig-android-v11.json
#C:/Users/เบส/Desktop/TISCO/Mobile App/BestTest/nodeconfig/nodeconfig-android-v12.json