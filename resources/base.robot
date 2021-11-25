*** Settings ***

Library           AppiumLibrary

*** Keywords ***

Open Session

    Set Appium Timeout        5
    Open Application         http://localhost:4723/wd/hub
    ...                      automationName=UiAutomator2
    ...                      platformName=Android
    ...                      deviceName=Emulator
    ...                      app=/media/scherman/HD1/Cursos/Automação de teste/Robot-Mobile/apk/twp.apk
    ...                      udid=emulator-5554

Close Session

    Close Application

Get Started
    
    Wait Until Page Contains                COMEÇAR
    Click Text                              COMEÇAR

Open Nav

    Wait Until Element Is Visible           xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Click Element                            xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible            id=io.qaninja.android.twp:id/navView