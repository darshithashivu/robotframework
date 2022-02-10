*** Variables ***
${MY_NAME}   Drashu K S
@{COLORS}    red     blue    green   black   yellow
&{PERSONAL DETAIL}     empfn=Drashitha     empln=R     empmob=13244545

*** Test Cases ***
TC1
     Log To Console  ${EXEC_DIR}
     Log To Console  ${CURDIR}
     Log To Console  ${OUTPUT_DIR}
     Log To Console  ${EXEC_DIR}{/}driver${/}msedgedriver.exe
     Log To Console  ${SUITE_NAME}
     Log To Console  ${TEST_NAME}
     Log To Console  ${TEMP_DIR}
     Log To Console  ${MY_NAME}

     Log To Console  ${COLORS}
     Log To Console  ${COLORS}[0]

TC2
     FOR    ${i}    IN RANGE     0   2    1
     Log To Console  ${COLORS}[${i}]
     END

TC3
     FOR  ${color}   IN  @{COLORS}
     Log To Console  ${color}
     END

TC4
     Log To Console  ${PERSONAL DETAIL}
     Log To Console  The first name is ${PERSONAL DETAIL}[empfn]
     Log To Console  The last name is ${PERSONAL DETAIL}[empln]
     Log To Console  The mobile number is ${PERSONAL DETAIL}[empmob]