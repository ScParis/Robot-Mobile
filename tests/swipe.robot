*** Settings ***

Resource            ../resources/base.robot

Test Setup           Open Session
Test Teardown        Close Session

# start_x - x-percent at which to start
# start_y - y-percent at which to start
# end_x - x-percent distance from start_x at which to stop
# end_y - y-percent distance from start_y at which to stop
# duration - (optional) time to take the swipe, in ms.

# :from {
    
#     Y -> 350 / 2280 = 15,350%
#     X -> 940 / 1080 = 87.037%

# }

# :to {

#     Y -> 350 / 2280 = 15,350%
#     X -> 510 / 1080 = 47.220%

# }

*** Variable ***

${BTN_REMOVE}                id=io.qaninja.android.twp:id/btnRemove


*** Test Cases ***

Should Remove "Captão Ametica"

    Go To Avengers List

    Swipe By Percent        87.03        15.35        47.22         15.35
    wait Until Element Is Visible            ${BTN_REMOVE}
    Click Element                            ${BTN_REMOVE}
    Sleep                                    5