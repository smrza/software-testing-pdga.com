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

TC001_001_001 – Ověření funkčnosti Home
    Load URL Wait For Element Click Wait For Element Wait Take Screenshot  ${TC001_001_001_screenshot}  ${PanelHome}  ${URL_introduction}  ${HeaderLogo}

TC001_001_002 – Ověření funkčnosti About
    Mouse Over Click Wait For Element Wait Take Screenshot Return  ${TC001_001_002_screenshot}  ${PanelAbout}  ${PanelAboutWhatIsDiscgolf}  ${HeaderLogo}

TC001_001_003 – Ověření funkčnosti Membership
    Mouse Over Click Wait For Element Wait Take Screenshot Return  ${TC001_001_003_screenshot}  ${PanelMembership}  ${PanelMembershipJoinRenew}  ${HeaderLogo}

TC001_001_004 – Ověření funkčnosti Events
    Mouse Over Click Wait For Element Wait Take Screenshot Return  ${TC001_001_004_screenshot}  ${PanelEvents}  ${PanelEventsEventsSearch}  ${HeaderLogo}

TC001_001_005 – Ověření funkčnosti Courses
    Mouse Over Click Wait For Element Wait Take Screenshot Return  ${TC001_001_005_screenshot}  ${PanelCourses}  ${PanelCoursesCourseSearch}  ${HeaderLogo}

TC001_001_006 – Ověření funkčnosti Rules
    Mouse Over Click Wait For Element Wait Take Screenshot Return  ${TC001_001_006_screenshot}  ${PanelRules}  ${PanelRulesOverview}  ${HeaderLogo}

TC001_001_007 – Ověření funkčnosti Media
    Mouse Over Click Wait For Element Wait Take Screenshot Return  ${TC001_001_007_screenshot}  ${PanelMedia}  ${PanelMediaNews}  ${HeaderLogo}

TC001_001_008 – Ověření funkčnosti International
    Mouse Over Click Wait For Element Wait Take Screenshot Return  ${TC001_001_008_screenshot}  ${PanelInternational}  ${PanelInternationalPDGAInternational}  ${HeaderLogo}

TC001_001_009 – Ověření funkčnosti More
    Mouse Over Click Wait For Element Wait Take Screenshot Return  ${TC001_001_009_screenshot}  ${PanelMore}  ${PanelMoreRatings}  ${HeaderLogo}

Post-conditions
    Close Browser