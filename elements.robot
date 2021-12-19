*** Settings ***
Library  SeleniumLibrary


*** Variables ***
# TS001_000
${HeaderLogo}  //*[@id="logo"]
${HeaderTwitter}  //*[@id="mini-panel-header_user_bar"]/div/div/div[1]/div/ul/li[1]/a
${HeaderInstagram}  //*[@id="mini-panel-header_user_bar"]/div/div/div[1]/div/ul/li[2]/a
${HeaderFacebook}  //*[@id="mini-panel-header_user_bar"]/div/div/div[1]/div/ul/li[3]/a
${HeaderFlickr}  //*[@id="mini-panel-header_user_bar"]/div/div/div[1]/div/ul/li[4]/a
${HeaderYoutube}  //*[@id="mini-panel-header_user_bar"]/div/div/div[1]/div/ul/li[5]/a
${HeaderLinkedin}  //*[@id="mini-panel-header_user_bar"]/div/div/div[1]/div/ul/li[6]/a
${HeaderLoginLink}  //*[@id="mini-panel-header_user_bar"]/div/div/div[5]/div/ul/li[1]/a
${HeaderJoinRenewLink}  //*[@id="mini-panel-header_user_bar"]/div/div/div[5]/div/ul/li[2]/a
${HeaderContactLink}  //*[@id="mini-panel-header_user_bar"]/div/div/div[5]/div/ul/li[3]/a
${ContentNewsPreview}  //*[@id="flexslider_views_slideshow_main_home_main_carousel-panel_pane_1_1"]/div/div
${ContentNewsPanelLink}  //*[@id="quicktabs-tabpage-events_and_announcements-0"]/div/div[1]/div/ul/li[1]/div/span/a
${ContentCurrentEventsPanel}  //*[@id="quicktabs-tab-events_and_announcements-1"]
${ContentCurrentEventsPanelLink}  //*[@id="block-tournament-tour-events"]/div/div/div[1]/ul/li[1]/a[1]
${ContentTwitterLiveUpdatesLink}  //*[@id="block-system-main"]/div/div/div/div[3]/div[1]/div/div/div/div/div[1]/div/ul/li[3]/span/span/a[3]
${ContentFeaturedVideoPlayButton}  //*[@id="block-system-main"]/div/div/div/div[3]/div[2]/div/div

# TS001_001
${PanelHome}  //*[@id="nice-menu-1"]/li[1]/a
${PanelAbout}  //*[@id="nice-menu-1"]/li[2]/div
${PanelAboutWhatIsDiscgolf}  //*[@id="nice-menu-1"]/li[2]/ul/li[1]/a
${PanelMembership}  //*[@id="nice-menu-1"]/li[3]/div
${PanelMembershipJoinRenew}  //*[@id="nice-menu-1"]/li[3]/ul/li[1]/a
${PanelEvents}  //*[@id="nice-menu-1"]/li[4]/div
${PanelEventsEventsSearch}  //*[@id="nice-menu-1"]/li[4]/ul/li[3]/a
${PanelCourses}  //*[@id="nice-menu-1"]/li[5]/div
${PanelCoursesCourseSearch}  //*[@id="nice-menu-1"]/li[5]/ul/li[2]/a
${PanelRules}  //*[@id="nice-menu-1"]/li[6]/div
${PanelRulesOverview}  //*[@id="nice-menu-1"]/li[6]/ul/li[1]/a
${PanelMedia}  //*[@id="nice-menu-1"]/li[7]/div
${PanelMediaNews}  //*[@id="nice-menu-1"]/li[7]/ul/li[1]/a
${PanelInternational}  //*[@id="nice-menu-1"]/li[8]/a
${PanelInternationalPDGAInternational}  //*[@id="nice-menu-1"]/li[8]/ul/li[1]/a
${PanelMore}  //*[@id="nice-menu-1"]/li[9]/div
${PanelMoreRatings}  //*[@id="nice-menu-1"]/li[9]/ul/li[14]/a

# TS001_002
${FooterLogo}  //*[@id="region-footer-second"]/div
${FooterWhatIsDiscgolf}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[1]/ul/li[1]/a
${FooterHistoryOfDiscGolf}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[1]/ul/li[2]/a
${FooterOfficialRulesOfDiscgolf}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[1]/ul/li[3]/a
${FooterDiscGolfersCode}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[1]/ul/li[4]/a
${FooterCourseDirectory}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[1]/ul/li[5]/a
${FooterJoinRenew}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[2]/ul/li[1]/a
${FooterBenefits}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[2]/ul/li[2]/a
${FooterMemberSearch}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[2]/ul/li[3]/a
${FooterPlayerStatistics}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[2]/ul/li[4]/a
${FooterFAQ}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[2]/ul/li[5]/a
${FooterSheduleResults}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[3]/ul/li[1]/a
${FooterNationalTour}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[3]/ul/li[2]/a
${FooterMajorEvents}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[3]/ul/li[3]/a
${FooterWorldChampionships}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[3]/ul/li[4]/a
${FooterTournamentDirectors}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[3]/ul/li[5]/a
${FooterDiscGolferMagazine}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[4]/ul/li[1]/a
${FooterRadio}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[4]/ul/li[2]/a
${FooterVideos}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[4]/ul/li[3]/a
${FooterFacebook}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[4]/ul/li[4]/a
${FooterInstagram}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[4]/ul/li[5]/a
${FooterTwitter}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[4]/ul/li[6]/a
${FooterContact}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[5]/ul/li[1]/a
${FooterInternational}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[5]/ul/li[2]/a
${FooterOfficialStore}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[5]/ul/li[3]/a
${FooterSubscribeForUpdates}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[5]/ul/li[4]/a
${FooterTermsOfUse}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[5]/ul/li[5]/a
${FooterPrivacyPolicy}  //*[@id="mini-panel-footer_menu"]/div/div/div/div/ul/li[5]/ul/li[6]/a

# TS002_000
${PlayersSearchButton}  //*[@id="edit-submit-player-search"]
${PlayersName}  //*[@id="edit-firstname"]
${PlayersSurname}  //*[@id="edit-lastname"]
${PlayersNumber}  //*[@id="edit-pdganum"]
${PlayersStatus}  //*[@id="edit-status"]
${PlayersGender}  //*[@id="edit-gender"]
${PlayersClass}  //*[@id="edit-class"]
${PlayersType}  //*[@id="edit-membertype"]
${PlayersCity}  //*[@id="edit-city"]
${PlayersStateProvince}  //*[@id="edit-stateprov"]
${PlayersCountry}  //*[@id="edit-country"]
${PlayersContinent}  //*[@id="edit-country-1"]
${PlayersLink}  //*[@id="block-system-main"]/div/div/div/div[2]/div/table/tbody/tr/td[1]/a
${PlayersSorting1}  //*[@id="block-system-main"]/div/div/div/div[2]/div/table/thead/tr/th[3]/a
${PlayersSorting2}  //*[@id="block-system-main"]/div/div/div/div[2]/div/table/thead/tr/th[2]/a
${PlayersNext}  //*[@id="block-system-main"]/div/div/div/div[3]/ul/li[13]/a
${PlayersPrevious}  //*[@id="block-system-main"]/div/div/div/div[3]/ul/li[2]/a
${PlayersFirst}  //*[@id="block-system-main"]/div/div/div/div[3]/ul/li[1]/a
${PlayersLast}  //*[@id="block-system-main"]/div/div/div/div[3]/ul/li[12]/a
${PlayersPageNumber}  //*[@id="block-system-main"]/div/div/div/div[3]/ul/li[5]/a

# TS002_001
${StatsSearchButton}  //*[@id="edit-submit-player-statistics"]
${StatsYear}  //*[@id="edit-year"]
${StatsMemberClass}  //*[@id="edit-player-class"]
${StatsGender}  //*[@id="edit-gender"]
${StatsDivision}  //*[@id="edit-bracket"]
${StatsContinent}  //*[@id="edit-continent"]
${StatsCountry}  //*[@id="edit-country"]
${StatsStateProvince}  //*[@id="edit-stateprov"]
${StatsSorting1}  //*[@id="block-system-main"]/div/div/div/div[2]/div/table/thead/tr/th[12]/a
${StatsSorting2}  //*[@id="block-system-main"]/div/div/div/div[2]/div/table/thead/tr/th[3]/a

# TS003_000
${AccountRegisterButton}  //*[@id="edit-submit"]
${AccountRegisterEmail}  //*[@id="edit-mail"]
${AccountRegisterUsername}  //*[@id="edit-name"]
${AccountRegisterNewPassword}  //*[@id="edit-pass-pass1"]
${AccountRegisterConfirmPassword}  //*[@id="edit-pass-pass2"]

# TS003_001
${LoginButton}  //*[@id="edit-submit"]
${LoginMail}  //*[@id="edit-name"]
${LoginPassword}  //*[@id="edit-pass"]

# TS003_002
${HomePageAccountLink}  //*[@id="mini-panel-header_user_bar"]/div/div/div[5]/div/ul/li[1]/a
${HomePageLogoutLink}  //*[@id="mini-panel-header_user_bar"]/div/div/div[5]/div/ul/li[4]/a

