*** Settings ***

Resource            ../resources/base.robot

Test Setup           Open Session
Test Teardown        Close Session

*** Test Cases ***

Access Page Dialogs

    Get Started
    Open Nav

    Click Text                              DIALOGS
    Wait Until Element Is Visible           id=io.qaninja.android.twp:id/toolbarTitle
    Element Text Should Be                  id=io.qaninja.android.twp:id/toolbarTitle         DIALOGS

Access Page Forms

    Get Started
    Open Nav

    Click Text                               FORMS
    Wait Until Element Is Visible            id=io.qaninja.android.twp:id/toolbarTitle
    Element Text Should Be                   id=io.qaninja.android.twp:id/toolbarTitle         FORMS

Access Page Avengers

    Get Started
    Open Nav

    Click Text                               AVENGERS
    Wait Until Element Is Visible            id=io.qaninja.android.twp:id/toolbarTitle
    Element Text Should Be                   id=io.qaninja.android.twp:id/toolbarTitle         AVENGERS

