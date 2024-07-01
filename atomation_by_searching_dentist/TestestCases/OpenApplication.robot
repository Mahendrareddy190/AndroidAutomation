*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
Open Test Application
    open application    http://localhost:4723/wd/hub    platformName=Android  platformVersion=12   appActivity=LauncherAlias  automationName=Appium    appPackage=com.practo.fabric

Enter Destails to Login
    wait until page contains element    com.practo.fabric:id/login_help      10
    click element    com.practo.fabric:id/login_help
    click element    //android.widget.Button[@resource-id="com.practo.fabric:id/card_button" and @text="Sign in with email"]
    input text    com.practo.fabric:id/email_edit_text     mobile.practo+consult1@gmail.com
    input text    com.practo.fabric:id/password_edit_text  practo@321
    click element    com.practo.fabric:id/continue_button
    sleep    5s
Enable location
    wait until page contains element   com.practo.fabric:id/button_enable_location  10
    click element    com.practo.fabric:id/button_enable_location
    wait until page contains element    com.android.permissioncontroller:id/permission_allow_foreground_only_button   10
    click element    com.android.permissioncontroller:id/permission_allow_foreground_only_button
search dentist
    wait until element is visible    com.practo.fabric:id/search_bar_image    10
    click element    com.practo.fabric:id/search_bar_image
    wait until page contains element    com.practo.fabric:id/search_bar     10
    input text    com.practo.fabric:id/search_bar   Dentist
    click element    //androidx.recyclerview.widget.RecyclerView[@resource-id="com.practo.fabric:id/recycler_view_list"]/android.view.ViewGroup[1]/android.widget.LinearLayout/android.widget.LinearLayout
    wait until page contains element    //android.view.View[@content-desc="Book In-clinic Appointment. Book an appointment with a top dentist"]    10
    click element    //android.view.View[@content-desc="Book In-clinic Appointment. Book an appointment with a top dentist"]
open doctor profile
     wait until page contains element   com.practo.fabric:id/layout_item_listing_doctor_card_info   10
     click element    com.practo.fabric:id/layout_item_listing_doctor_card_info
bookAppointment
     wait until page contains element    //android.widget.Button[@text="Book Clinic Visit"]    10
     click element    //android.widget.Button[@text="Book Clinic Visit"]
     wait until page contains element    com.practo.fabric:id/slot_info  10
     click element    com.practo.fabric:id/slot_info



