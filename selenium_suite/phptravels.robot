*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tc1 Register form
    Open Browser    url=https://phptravels.net/     browser=edge      executable_path=${EXECDIR}\\driver\\msedgedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
