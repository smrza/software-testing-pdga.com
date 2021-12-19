*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  url.robot
Resource  keywords.robot
Resource  elements.robot
Resource  variables.robot



*** Test Cases ***
Pre-conditions
    Set Selenium Speed  0.2
    Open Browser With Given URL and Check Element  ${URL_main}  ${WorkingBrowser}  ${HeaderLogo}

TC001_000_001 – Ověření načtení stránky
    Wait Until Element Is Visible  ${HeaderLogo}
    Sleep  5
    Take Screenshot  ${TC001_000_001_screenshot}

TC001_000_002 – Kontrola loga
    Click Wait Load  ${HeaderLogo}  ${ContentNewsPreview}
    Take Screenshot  ${TC001_000_002_screenshot}

TC001_000_003 – Kontrola odkazů na sociální sítě
    Wait Visible Click Element Wait Take Screenshot Close Window Return  ${TC001_000_003_screenshot_a}  ${HeaderTwitter}
    Wait Visible Click Element Wait Take Screenshot Close Window Return  ${TC001_000_003_screenshot_b}  ${HeaderInstagram}
    Wait Visible Click Element Wait Take Screenshot Close Window Return  ${TC001_000_003_screenshot_c}  ${HeaderFacebook}
    Wait Visible Click Element Wait Take Screenshot Close Window Return  ${TC001_000_003_screenshot_d}  ${HeaderFlickr}
    Wait Visible Click Element Wait Take Screenshot Close Window Return  ${TC001_000_003_screenshot_e}  ${HeaderYoutube}
    Wait Visible Click Element Wait Take Screenshot Close Window Return  ${TC001_000_003_screenshot_f}  ${HeaderLinkedin}

TC001_000_004 – Kontrola Login / Join & Renew / Contact
    Click Wait Load Take Screenshot Click  ${TC001_000_004_screenshot_a}  ${HeaderLoginLink}  ${HeaderLogo}
    Click Wait Load Take Screenshot Click  ${TC001_000_004_screenshot_b}  ${HeaderJoinRenewLink}  ${HeaderLogo}
    Click Wait Load Take Screenshot Click  ${TC001_000_004_screenshot_c}  ${HeaderContactLink}  ${HeaderLogo}

TC001_000_005 – Kontrola novinek a oznámení
    Click Picture Wait Load Take Screenshot Return  ${TC001_000_005_screenshot_a}  ${ContentNewsPreview}  ${HeaderLogo}  50  50
    Click Wait Load Take Screenshot Return  ${TC001_000_005_screenshot_b}  ${ContentNewsPanelLink}  ${HeaderLogo}

TC001_000_006 – Kontrola aktuálních eventů
    Click Click Wait Load Take Screenshot Return  ${TC001_000_006_screenshot}  ${ContentCurrentEventsPanel}  ${ContentCurrentEventsPanelLink}  ${HeaderLogo}

TC001_000_007 – Kontrola Twitter Live Updates
    Scroll Load Click Wait Take Screenshot Close Window Return  ${TC001_000_007_screenshot}  ${ContentTwitterLiveUpdatesLink}

TC001_000_008 – Kontrola přehrání Featured Videa
    Scroll Play Wait Take Screenshot Reload  ${TC001_000_008_screenshot_a}  ${TC001_000_008_screenshot_b}  ${ContentFeaturedVideoPlayButton}  50  50

Post-conditions
    Reload Page
    Wait Until Element Is Visible  ${ContentNewsPreview}
    Sleep  5
    Close Browser