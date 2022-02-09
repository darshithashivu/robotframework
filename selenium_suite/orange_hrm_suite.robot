*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
Tc1 Valid Login
    Append To Environment Variable    path   ${EXECDIR}\\driver
    Open Browser  url=https://opensource-demo.orangehrmlive.com/      browser=edge
    Input Text    id=txtUsername  Admin
    Input password   id=txtPassword   admin123
    Click Element    name=Submit
     ${url}   Get Location
     Log To Console  ${url}
     Click Element   id=welcome
     Sleep  5s
     Click Element  link=Logout
    Close Browser