*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
     Open Browser    browser=edge    executable_path=${EXECDIR}\\driver\\msedgedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait      30s
     Set Window Size  600  800
     Go To  url=https:/google.com/
      ${linkcount}    Get Element Count    tag=a
    Log To Console    ${linkcount}

    @{elements}  Get WebElements    tag=a

    FOR    ${i}    IN RANGE    0    ${linkcount}    1
        ${text}     Get Text    ${elements}[${i}]
        Log To Console    ${text}

        Run Keyword If    '${text}'=='About'       Click Element    ${elements}[${i}]
        Exit For Loop If    '${text}'=='About'
    END

    Comment     wrtie for loop to get 0 to 24 index and use it to get text


#    IF  '${text}'=='Images'
#            Click Element    ${elements}[${i}]
#            Exit For Loop
#    END


#    Click Element    ${elements}[0]

TC2
     Open Browser    browser=edge    executable_path=${EXECDIR}\\driver\\msedgedriver.exe
     Set Selenium Implicit Wait      30s
       Go To  url=https:/google.com/
       ${width}   ${height}  Get Window Size
       Log To Console  ${width}
       Log To Console  ${height}

TC3 Mouse Test
             Open Browser    browser=edge    executable_path=${EXECDIR}\\driver\\msedgedriver.exe
     Set Selenium Implicit Wait      30s
       Go To  url=https://nasscom.in/nasscom-membership
       Mouse over   Xpath=//a[text() = 'Memebership']
       Click Element  Xpath=//a[text()='Members Listing']



