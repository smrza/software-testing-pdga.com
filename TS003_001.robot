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

TC003_001_001 – Login pouze s emailem
    Make Input  ${LoginMail}  ${TC003_001_001_mail}
    Click Wait Take Screenshot  ${LoginButton}  ${TC003_001_001_screenshot}

TC003_001_002 – Login pouze s heslem
    Go To  ${URL_login}
    Make Input  ${LoginPassword}  ${TC003_001_002_password}
    Click Wait Take Screenshot  ${LoginButton}  ${TC003_001_002_screenshot}

TC003_001_003 – Login se špatnými údaji
    Go To  ${URL_login}
    Make Input  ${LoginMail}  ${TC003_001_003_mail} 
    Make Input  ${LoginPassword}  ${TC003_001_003_password}
    Click Wait Take Screenshot  ${LoginButton}  ${TC003_001_003_screenshot}

TC003_001_004 – Úspěšné přihlášení uživatele s emailem a heslem
    Go To  ${URL_login}
    Make Input  ${LoginMail}  ${TC003_001_004_mail} 
    Make Input  ${LoginPassword}  ${TC003_001_004_password}
    Click Wait Take Screenshot  ${LoginButton}  ${TC003_001_004_screenshot}

Post-conditions
    Close Browser