*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tc1 Register form
    Open Browser    url=https://nasscom.in/about-us/career     browser=edge      executable_path=${EXECDIR}\\driver\\msedgedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
#    Click Element    partial link=New User
    Click Element    xpath=//a[contains(text(),'New User')]
    Input Text    id=edit-field-fname-reg    darshu
    Input Text    id=edit-field-lname    s
    Input Text    id=edit-mail    darshu@gmail.com
    Input Text    id=edit-field-company-name-registration    L&T
    Select From List By Label    id=edit-field-business-focus-reg   IT Consulting
    Click Element    name=op
    Close Browser

