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

TC001_002_001 – Testování odkazů Discgolf
    Wait Scroll Click Wait Return  ${FooterWhatIsDiscgolf}  ${HeaderLogo}
    Wait Scroll Click Wait Return  ${FooterHistoryOfDiscGolf}  ${HeaderLogo}
    Wait Scroll Click Wait Return  ${FooterOfficialRulesOfDiscgolf}  ${HeaderLogo}
    Wait Scroll Click Wait Return  ${FooterDiscGolfersCode}  ${HeaderLogo}
    Wait Scroll Click Wait Return  ${FooterCourseDirectory}  ${HeaderLogo}

TC001_002_002 – Testování odkazů Membership
    Wait Scroll Click Wait Return  ${FooterJoinRenew}  ${HeaderLogo}
    Wait Scroll Click Wait Return  ${FooterBenefits}  ${HeaderLogo}
    Wait Scroll Click Wait Return  ${FooterMemberSearch}  ${HeaderLogo}
    Wait Scroll Click Wait Return  ${FooterPlayerStatistics}  ${HeaderLogo}
    Wait Scroll Click Wait Return  ${FooterFAQ}  ${HeaderLogo}

TC001_002_003 – Testování odkazů Tour
    Wait Scroll Click Wait Return  ${FooterSheduleResults}  ${HeaderLogo}
    Wait Scroll Click Wait Return  ${FooterNationalTour}  ${HeaderLogo}
    Wait Scroll Click Wait Return  ${FooterMajorEvents}  ${HeaderLogo}
    Wait Scroll Click Wait Return  ${FooterWorldChampionships}  ${HeaderLogo}
    Wait Scroll Click Wait Return  ${FooterTournamentDirectors}  ${HeaderLogo}

TC001_002_004 – Testování odkazů Media
    Wait Scroll Click Wait Return  ${FooterDiscGolferMagazine}  ${HeaderLogo}
    Wait Scroll Click Wait Return  ${FooterRadio}  ${HeaderLogo}
    Wait Scroll Click Wait Return  ${FooterVideos}  ${HeaderLogo}
    Wait Scroll Click Wait Close  ${FooterFacebook}
    Wait Scroll Click Wait Close  ${FooterInstagram}
    Wait Scroll Click Wait Close  ${FooterTwitter}

TC001_002_005 – Testování odkazů More
    Wait Scroll Click Wait Return  ${FooterContact}  ${HeaderLogo}
    Wait Scroll Click Wait Return  ${FooterInternational}  ${HeaderLogo}
    Wait Scroll Click Wait Return Store  ${FooterOfficialStore}
    Wait Scroll Click Wait Close  ${FooterSubscribeForUpdates}
    Wait Scroll Click Wait Return  ${FooterTermsOfUse}  ${HeaderLogo}
    Wait Scroll Click Wait Return  ${FooterPrivacyPolicy}  ${HeaderLogo}

Post-conditions
    Wait Until Element Is Visible  ${FooterLogo}
    Scroll Element Into View  ${FooterLogo}
    Take Screenshot  ${TS001_002_screenshot}
    Close Browser