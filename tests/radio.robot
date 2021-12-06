*** Settings ***

Resource            ../resources/base.robot

Test Setup           Open Session
Test Teardown        Close Session

*** Test Cases ***
Should Select Python Option

    Go To Radio Buttons

    ${ELEMENT}            Set Variable                  xpath=//android.widget.RadioButton[contains(@text, 'Python')]           

    Click Element                           ${ELEMENT}
    Wait Until Element Is Visible           ${ELEMENT}


    Element Attribute Should Match          ${ELEMENT}            checked             true