*** Settings ***

Resource            ../resources/base.robot

Test Setup           Open Session
Test Teardown        Close Session

*** Test Cases ***
Should Check RobotFramework Option

    Go To CheckBox

    ${ELEMENT}            Set Variable                  xpath=//android.widget.CheckBox[contains(@text, 'Robot Framework')]

    Click Element                           ${ELEMENT}
    Wait Until Element Is Visible           id=io.qaninja.android.twp:id/rvContainer


    Element Attribute Should Match          ${ELEMENT}            checked             true