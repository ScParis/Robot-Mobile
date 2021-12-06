*** Settings ***

Resource            ../resources/base.robot

Test Setup           Open Session
Test Teardown        Close Session

*** Variables ***

${TOOLBAR_TITLE}                id=io.qaninja.android.twp:id/toolbarTitle


*** Test Cases ***

Access Page Dialogs

    # Get Started
    Open Nav

    Click Text                              DIALOGS
    Wait Until Element Is Visible           ${TOOLBAR_TITLE}
    Element Text Should Be                  ${TOOLBAR_TITLE}         DIALOGS

    Capture Page Screenshot

Access Page Forms

    # Get Started
    Open Nav

    Click Text                               FORMS
    Wait Until Element Is Visible            ${TOOLBAR_TITLE}
    Element Text Should Be                   ${TOOLBAR_TITLE}         FORMS

    Capture Page Screenshot

Access Page Avengers

    # Get Started
    Open Nav

    Click Text                               AVENGERS
    Wait Until Element Is Visible            ${TOOLBAR_TITLE}
    Element Text Should Be                   ${TOOLBAR_TITLE}         AVENGERS

    Capture Page Screenshot

