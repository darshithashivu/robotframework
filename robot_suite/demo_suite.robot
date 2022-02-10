*** Settings ***
Library    Collections
*** Variables ***
${MY_NAME}      Darshitha
@{COLORS}    red    green   yellow   black   blue  pink
&{EMPLOYEE1}    empid=100   empname=darshitha    age=21

*** Test Cases ***
TC1
    Log To Console    ${EXECDIR}
    Log To Console    ${CURDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${EXECDIR}${/}driver${/}msedgedriver.exe
    Log To Console    ${SUITE_NAME}
    Log To Console    ${TEST_NAME}
    Log To Console    ${TEMPDIR}
    Log To Console    ${MY_NAME}

    Log To Console    ${COLORS}
    Log To Console    ${COLORS}[0]

TC2
    ${count}    Get Length    ${COLORS}
    Log To Console    ${count}

    FOR    ${i}    IN RANGE    0     ${count}      1
        Log To Console    ${COLORS}[${i}]
    END

TC3
    FOR    ${color}    IN    @{COLORS}
        Log To Console    ${color}
    END

TC4
    Log To Console    ${EMPLOYEE1}
    Log To Console    ${EMPLOYEE1}[empname]
    Log To Console    The employee age is ${EMPLOYEE1}[age]
    Log Dictionary     ${EMPLOYEE1}
    Log List    ${COLORS}