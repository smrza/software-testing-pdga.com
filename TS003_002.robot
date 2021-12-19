*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  url.robot
Resource  keywords.robot
Resource  elements.robot
Resource  variables.robot



*** Test Cases ***
Pre-conditions
    Set Selenium Speed  0.2
    Open Browser With Given URL and Check Element  ${URL_login}  ${WorkingBrowser}  ${HeaderLogo}
    Make Input  ${LoginMail}  testovanisoftware2020@protonmail.com 
    Make Input  ${LoginPassword}  testovanisoftware2020
    Click Element  ${LoginButton}
    Sleep  1
    Go To  ${URL_main}

TC003_002_001 – Najetí do uživatelského účtu
    Click Wait Take Screenshot  ${HomePageAccountLink}  ${TC003_002_001_screenshot}

TC003_002_002 – Úspěšné odhlášení účtu
    Click Wait Take Screenshot  ${HomePageLogoutLink}  ${TC003_002_002_screenshot}

Post-conditions
    Close Browser