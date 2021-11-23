*** Settings ***

Library           AppiumLibrary

Test Setup           Open Session
Test Teardown        Close Session

*** Test Cases ***

Access Page Dialogs

    Wait Until Page Contains                COMEÇAR

    Click Text                              COMEÇAR
    Wait Until Element Is Visible           xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Click Element                           xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible           id=io.qaninja.android.twp:id/navView

    Click Text                              DIALOGS
    Wait Until Element Is Visible           id=io.qaninja.android.twp:id/toolbarTitle
    Element Text Should Be                  id=io.qaninja.android.twp:id/toolbarTitle         DIALOGS

Access Page Forms

    Wait Until Page Contains                COMEÇAR

    Click Text                              COMEÇAR
    Wait Until Element Is Visible           xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Click Element                            xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible            id=io.qaninja.android.twp:id/navView

    Click Text                               FORMS
    Wait Until Element Is Visible            id=io.qaninja.android.twp:id/toolbarTitle
    Element Text Should Be                   id=io.qaninja.android.twp:id/toolbarTitle         FORMS

Access Page Avengers

    Wait Until Page Contains                COMEÇAR

    Click Text                              COMEÇAR
    Wait Until Element Is Visible           xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Click Element                            xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible            id=io.qaninja.android.twp:id/navView

    Click Text                               AVENGERS
    Wait Until Element Is Visible            id=io.qaninja.android.twp:id/toolbarTitle
    Element Text Should Be                   id=io.qaninja.android.twp:id/toolbarTitle         AVENGERS

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