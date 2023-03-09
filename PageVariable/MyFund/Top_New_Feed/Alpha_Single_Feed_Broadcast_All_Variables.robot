*** Variables ***
${URL}  http://127.0.0.1:4723/wd/hub
${PLATFORM}  Android
${DEVICE_TARGET}  13.0
${DEVICE_NAME}  Pixel 4 API 33 New
${APP_LOCATION}  ${CURDIR}${/}..${/}..${/}..${/}FileApk${/}app-modeSit-debug.apk


${varTopicCase1}  Automate Send Feed Broadcast all
${varDetailCase1}  Hello everyone, this message from automate test.

${varTopicCase2}  Automate Send Feed as schedule and broadcast all
${varDetailCase2}  Hello everyone, this is message send by schedule from automate test.

${varTopicCase3}  Automate Send Feed Specific Target Group
${varDetailCase3}  Hello Target Group, only this group will get this message.

${UsernameAcc3}  accuser3
${UsernameAutomate1}  automate1
${PasswordAutomate1}  Tisco#1234
${PasswordAcc3}  Tisco#1234