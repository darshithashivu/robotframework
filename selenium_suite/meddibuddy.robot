*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tc1 Register form
    Open Browser    url=https://www.medibuddy.in/     browser=edge      executable_path=${EXECDIR}\\driver\\msedgedriver.exe
     Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    id=wzrk-wzrk-cancel
    Click Element      link=For Employer
    Switch Window       MediBuddy LaunchPad
    Click Element       link=Sign up
    Input Text       id=name   darshu
    Input Text       name=email    darshu@gmail.com
    Input Text      id=companyName   Lt
    Input Text       id=mobileNumber   14562
    Input Text    id=address    India
    Input Text    id=pincode    1452
    Input Text    id=websiteUrl     www.goole.com
    Input Text    id=empCount    100
    Click Element    xpath=//input[@value='Next']
    Close Browser