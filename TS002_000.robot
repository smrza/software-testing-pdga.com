*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  url.robot
Resource  keywords.robot
Resource  elements.robot
Resource  variables.robot



*** Test Cases ***
Pre-conditions
    Set Selenium Speed  0.2
    Open Browser With Given URL and Check Element  ${URL_players}  ${WorkingBrowser}  ${HeaderLogo}

TC002_000_001 – Podle jména
    Input Click Wait Take Screenshot  ${TC002_000_001_screenshot}  ${PlayersName}  ${TC002_000_001_name}  ${PlayersSearchButton}

TC002_000_002 – Podle příjmení
    Go To  ${URL_players}
    Input Click Wait Take Screenshot  ${TC002_000_002_screenshot}  ${PlayersSurname}  ${TC002_000_002_surname}  ${PlayersSearchButton}

TC002_000_003 – Podle PDGA čísla
    Go To  ${URL_players}
    Input Click Wait Take Screenshot  ${TC002_000_003_screenshot}  ${PlayersNumber}  ${TC002_000_003_pdgaNumber}  ${PlayersSearchButton}

TC002_000_004 – Podle statusu/pohlaví/klasifikace/typu
    Go To  ${URL_players}
    Select Drop Down By Key Presses  ${PlayersStatus}  ${TC002_000_004_status}
    Select Drop Down By Key Presses  ${PlayersGender}  ${TC002_000_004_gender}
    Select Drop Down By Key Presses  ${PlayersClass}  ${TC002_000_004_class}
    Select Drop Down By Key Presses  ${PlayersType}  ${TC002_000_004_type}
    Press Button Wait Take Screenshot  ${TC002_000_004_screenshot}  ${PlayersSearchButton}

TC002_000_005 – Podle města/státu/země/kontinentu
    Go To  ${URL_players}
    Make Input  ${PlayersCity}  ${TC002_000_005_city}
    Select Drop Down By Key Presses  ${PlayersStateProvince}  ${TC002_000_005_stateProvince}
    Select Drop Down By Key Presses  ${PlayersCountry}  ${TC002_000_005_country}
    Select Drop Down By Key Presses  ${PlayersContinent}  ${TC002_000_005_continent}
    Press Button Wait Take Screenshot  ${TC002_000_005_screenshot}  ${PlayersSearchButton}

TC002_000_006 – Test odkazu na vyhledaného hráče
    Go To  ${URL_players}
    Make Input  ${PlayersName}  ${TC002_000_006_linkName}
    Make Input  ${PlayersSurname}  ${TC002_000_006_linkSurname}
    Wait Until Element Is Visible  ${PlayersSearchButton}
    Click Element  ${PlayersSearchButton}
    Click Wait Take Screenshot  ${PlayersLink}  ${TC002_000_006_screenshot}

TC002_000_007 – Ověření vzestupného/sestupného seřazení vyhledaných hráčů
    Go To  ${URL_players}
    Sleep  1
    Click Wait Take Screenshot  ${PlayersSorting1}  ${TC002_000_007_screenshot_a}
    Click Wait Take Screenshot  ${PlayersSorting2}  ${TC002_000_007_screenshot_b}
    Click Wait Take Screenshot  ${PlayersSorting2}  ${TC002_000_007_screenshot_c}

TC002_000_008 – Otestování další/předchozí/číslicových tlačítek vyhledávače
    Go To  ${URL_players}
    Sleep  1
    Scroll Click Wait Take Screenshot  ${TC002_000_008_screenshot_a}  ${PlayersPageNumber}
    Scroll Click Wait Take Screenshot  ${TC002_000_008_screenshot_b}  ${PlayersNext}
    Scroll Click Wait Take Screenshot  ${TC002_000_008_screenshot_c}  ${PlayersPrevious}
    Scroll Click Wait Take Screenshot  ${TC002_000_008_screenshot_d}  ${PlayersFirst}
    Scroll Click Wait Take Screenshot  ${TC002_000_008_screenshot_e}  ${PlayersPageNumber}

Post-conditions
    Go To  ${URL_main}
    Wait Until Element Is Visible  ${HeaderLogo}
    Close Browser