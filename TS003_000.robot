*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  url.robot
Resource  keywords.robot
Resource  elements.robot
Resource  variables.robot



*** Test Cases ***
Pre-conditions
    Set Selenium Speed  0.2
    Open Browser With Given URL and Check Element  ${URL_registration}  ${WorkingBrowser}  ${HeaderLogo}

# TC003_000_001 (ID) – Registrace je MANUALNI

TC003_000_002 – Registrace bez vyplněných polí
    Scroll Click Wait Take Screenshot  ${TC003_000_002_screenshot}  ${AccountRegisterButton}

TC003_000_003 – Testování správné formy emailu při registraci
    Go To  ${URL_registration}
    Make Input  ${AccountRegisterEmail}  ${TC003_000_003_mail}
    Make Input  ${AccountRegisterUsername}  ${TC003_000_003_username}
    Make Input  ${AccountRegisterNewPassword}  ${TC003_000_003_password}
    Make Input  ${AccountRegisterConfirmPassword}  ${TC003_000_003_password}
    Scroll Click Wait Take Screenshot  ${TC003_000_003_screenshot}  ${AccountRegisterButton}

Post-conditions
    Close Browser