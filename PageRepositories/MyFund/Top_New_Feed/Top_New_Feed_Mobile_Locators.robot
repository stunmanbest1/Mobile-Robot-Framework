*** Variables ***

${locatAndroidButtonAcceptCookie}  //android.widget.Button[2]
${locatAndroidIconNotification}  //android.widget.FrameLayout[@resource-id="com.tisconet.ftc.sit:id/notification"]    #//android.widget.FrameLayout/android.widget.ImageView
${locatAndroidMessageTopicInbox}   //android.view.ViewGroup[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView   #xpath= (//*[@resource-id="com.tisconet.ftc.sit:id/tvHeader"])[1]   
${locatAndroidMessageDetailInbox}  //android.view.ViewGroup[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView[1]


${locatAndroidMessageTopicInboxIn}  //android.widget.ScrollView/android.widget.LinearLayout/android.widget.TextView[1]
${locatAndroidMessageDetailInboxIn}  //android.widget.ScrollView/android.widget.TextView
${locatAndroidButtonBackInbox}  //android.widget.TextView[contains(@text,"กลับ")]

${locatAndroidDateonInbox}  //android.view.ViewGroup[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView[2]



#MenuBar
${locatMenuNews}  //android.widget.LinearLayout/android.widget.TextView[contains(@text,"ข่าวสาร")]
${locatMenuFund}  //android.widget.LinearLayout/android.widget.TextView[contains(@text,"กองทุน")]
${locatMenuMain}  //android.widget.LinearLayout/android.widget.TextView[contains(@text,"เมนู")]
${locatMenuInvestPort}  //android.widget.LinearLayout/android.widget.TextView[contains(@text,"พอร์ตลงทุน")]
${locatMenuTrade}  //android.widget.LinearLayout/android.widget.TextView[contains(@text,"ซื้อขาย")]

#Login
${locatButtonAccept}  //android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Button[1][contains(@text,"รับทราบ")]
${locatButtonReactivate}  //android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Button[2][contains(@text,"Reactivate")]
${locatUsername}  //android.widget.FrameLayout/android.widget.EditText[contains(@text,"ชื่อผู้ใช้งาน")]
${locatPassword}  //android.widget.FrameLayout/android.widget.EditText[contains(@text,"รหัสผ่าน")]
${locatButtonLogin}  //android.widget.LinearLayout/android.widget.Button[contains(@text,"เข้าสู่ระบบ")]  #//android.widget.Button[@resource-id="com.tisconet.ftc.sit:id/btnLogin"]
${locatButtonOpenAccount}  //android.widget.Button[contains(@text,"เปิดบัญชี")]
${locatInputOTP}  //android.widget.LinearLayout[1]/android.widget.EditText  #//android.widget.EditText[@resource-id="com.tisconet.ftc.sit:id/inputOtp"]

${locatButtonConfirmOTPDisabled}  //android.widget.LinearLayout[2]/android.widget.Button[@enabled="false"]
${locatButtonConfirmOTPEnabled}  //android.widget.LinearLayout[2]/android.widget.Button[@enabled="true"]
${locatLabelPleaseInputPIN}  //android.widget.LinearLayout[1]/android.widget.TextView[contains(@text,"กรุณากด PIN เพื่อเข้าสู่ระบบ")]

${locatButtonContactUs}   //android.widget.Button[contains(@text,"ติดต่อเจ้าหน้าที่")]
${locatButtonStartVDOCALL}  //android.widget.Button[contains(@text,"เริ่ม VDO CALL")]

${locatHeaderVDOCALL}  //android.widget.TextView[@resource-id="com.tisconet.ftc.sit:id/tvTitle"][contains(@text,"ติดต่อเจ้าหน้าที่ผ่าน VDO CALL")]     #//android.widget.TextView[@resource-id="com.tisconet.ftc.sit:id/tvTitle"]  
${locatAnnounceVDOCALL}    xpath= (//android.widget.FrameLayout[@resource-id="com.tisconet.ftc.sit:id/content"]//android.widget.TextView)[1]  #//android.widget.FrameLayout/android.widget.LinearLayout/android.widget.TextView[1]
${locatDetailVDOCALL1}  xpath= (//android.widget.FrameLayout[@resource-id="com.tisconet.ftc.sit:id/cardView"]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView)[1]
${locatDetailVDOCALL2}  xpath= (//android.widget.FrameLayout[@resource-id="com.tisconet.ftc.sit:id/cardView"]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView)[2]
# //*[@resource-id="com.tisconet.ftc.sit:id/headerTitle"][contains(@text,"เปิดบัญชีกองทุน")]