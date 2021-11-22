*** Settings ***

Library       hello.py

*** Test Cases ***

Should return Hello Messege

    ${RESULTS}               Hello Robot
    Log To Console           ${RESULTS}