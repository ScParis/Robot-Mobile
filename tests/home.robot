*** Settings ***

Library           AppiumLibrary


# {
#   "automationName": "UiAutomator2",
#   "platformName": "Android",
#   "deviceName": "Emulator",
#   "app": "/media/scherman/HD1/Cursos/Automação de teste/Robot-Mobile/apk/twp.apk",
#   "udid": "emulator-5554"
# }


*** Test Cases ***

Should Open Home Page

    Open Application         http://localhost:4723/wd/hub
    ...                      automationName=UiAutomator2
    ...                      platformName=Android
    ...                      deviceName=Emulator
    ...                      app=/media/scherman/HD1/Cursos/Automação de teste/Robot-Mobile/apk/twp.apk
    ...                      udid=emulator-5554

    Wait Until Page Contains      Training Wheels Protocol     5
    Wait Until Page Contains      Mobile Version     5
    Close Application