*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  url.robot
Resource  keywords.robot
Resource  elements.robot
Resource  variables.robot



*** Test Cases ***
Pre-conditions
    Set Selenium Speed  0.2
    Open Browser With Given URL and Check Element  ${URL_stats}  ${WorkingBrowser}  ${HeaderLogo}

TC002_001_001 – Vyhledávání podle roku/klasifikace/pohlaví
    Select Drop Down By Key Presses  ${StatsMemberClass}  ${TC002_001_001_class}
    Select Drop Down By Key Presses  ${StatsGender}  ${TC002_001_001_gender}
    Select Drop Down By Key Presses  ${StatsDivision}  ${TC002_001_001_division}
    Select Drop Down By Key Presses  ${StatsContinent}  ${TC002_001_001_continent}
    Select Drop Down By Key Presses  ${StatsCountry}  ${TC002_001_001_country}
    Select Drop Down By Key Presses  ${StatsStateProvince}  ${TC002_001_001_stateProvince}
    Select Drop Down By Key Presses  ${StatsYear}  ${TC002_001_001_year}
    Sleep  3
    Take Screenshot  ${TC002_001_001_screenshot}

TC002_001_002 – Testování vzestupného/sestupného seřazení statistik
    Go To  ${URL_stats}
    Sleep  1
    Click Wait Take Screenshot  ${StatsSorting1}  ${TC002_001_002_screenshot_a}
    Click Wait Take Screenshot  ${StatsSorting1}  ${TC002_001_002_screenshot_b}
    Click Wait Take Screenshot  ${StatsSorting2}  ${TC002_001_002_screenshot_c}

Post-conditions
    Go To  ${URL_main}
    Wait Until Element Is Visible  ${HeaderLogo}
    Close Browser