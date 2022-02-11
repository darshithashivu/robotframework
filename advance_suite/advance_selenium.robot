*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
     Open Browser    browser=edge    executable_path=${EXECDIR}\\driver\\msedgedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait      30s
     Go To  url=https:/google.com/
     ${linkcount}  Get Element count  tag=a
     Log To Console     ${linkcount}

     @{element}  Get WebElement    tag=a



      FOR  ${i}   IN RANGE     0    ${linkcount}       1
      ${text} Get Text  ${element}[${i}]
            Log To Console  ${text}
        END
