** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
Tc2 Emergency contact
    Append To Environment Variable    path   ${EXECDIR}\\driver
    Open Browser  url=https://opensource-demo.orangehrmlive.com/      browser=edge
    Input Text    id=txtUsername  Admin
    Input password   id=txtPassword   admin123
    Click Element    name=Submit
    ${url}      Get Location
    Log To Console    ${url}
    Click Element    link=My Info
    Click Element    link=Emergency Contacts
    Click Element    id=btnAddContact
    Input Text    id=emgcontacts_name    abc
    Input Text    id=emgcontacts_relationship    Mother
    Input Text    name=emgcontacts[homePhone]    097655678
    Input Text    name=emgcontacts[mobilePhone]    765432178
    Click Element    id=btnSaveEContact


