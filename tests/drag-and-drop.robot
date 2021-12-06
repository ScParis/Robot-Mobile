*** Settings ***

Resource            ../resources/base.robot

Test Setup           Open Session
Test Teardown        Close Session


*** Variable ***

${BTN_REMOVE}                id=io.qaninja.android.twp:id/btnRemove


*** Test Cases ***

Should Move "Hulk" To The Top

    Go To Avengers List
    
    Drag And Drop            io.qaninja.android.twp:id/drag_handle            3             0
    Sleep                     3