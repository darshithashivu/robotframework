*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1 Multitabs login

        Open Browser      browser=edge      executable_path=${EXECDIR}\\driver\\msedgedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://phptravels.net/
    Click Element    id=currency
    Select From List By Label        INR
    Click Element    link=flights
    Select From List By Label    id=flight_type     Business
