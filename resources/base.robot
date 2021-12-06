*** Settings ***

Library             AppiumLibrary
Library             libs/extends.py
Resource            helpers.robot



*** Keywords ***

Open Session

    Set Appium Timeout        5
    Open Application         http://localhost:4723/wd/hub
    ...                      automationName=UiAutomator2
    ...                      platformName=Android
    ...                      deviceName=Emulator
    ...                      app=/media/scherman/HD1/Cursos/Automação de teste/Robot-Mobile/apk/twp.apk
    ...                      udid=emulator-5554

    Get Started

Close Session
    
    Capture Page Screenshot
    Close Application
