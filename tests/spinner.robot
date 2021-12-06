*** Settings ***

Resource            ../resources/base.robot

Test Setup           Open Session
Test Teardown        Close Session

*** Variables ***

${SPINNER}                id=io.qaninja.android.twp:id/spinnerJob
${LIST_OPTIONS}           class=android.widget.ListView

*** Test Cases ***
You Must Select A Profile QA

    Go To SingUp Form
    Choice Job        QA

You Must Select A Profile DevOps

    Go To SingUp Form
    Choice Job        DevOps


*** Keywords ***

Choice Job

    [Arguments]                             ${TARGET}

    Click Element                           ${SPINNER}
    Wait Until Element Is Visible           ${LIST_OPTIONS}
    Click Text                              ${TARGET}

