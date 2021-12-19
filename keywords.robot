*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Open Browser With Given URL and Check Element
    [Arguments]   ${URL}  ${Browser}  ${Element}
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Wait Until Element Is Visible  ${Element}

Take Screenshot
    [Arguments]   ${ScreenshotName}
    Capture Page Screenshot  ${ScreenshotName}.png

Click Wait Load
    [Arguments]   ${Element}  ${Element2}
    Wait Until Element Is Visible  ${Element}
    Click Element  ${Element}
    Wait Until Element Is Visible  ${Element2}
    Sleep  2

Click Wait Load Take Screenshot Return
    [Arguments]   ${ScreenshotName}  ${Element}  ${Element2}
    Wait Until Element Is Visible  ${Element}
    Click Element  ${Element}
    Wait Until Element Is Visible  ${Element2}
    Sleep  2
    Capture Page Screenshot  ${ScreenshotName}.png
    Go Back

Click Picture Wait Load Take Screenshot Return
    [Arguments]   ${ScreenshotName}  ${Element}  ${Element2}  ${yC}  ${xC}
    Wait Until Element Is Visible  ${Element}
    Click Element At Coordinates  ${Element}  ${yC}  ${xC}
    Wait Until Element Is Visible  ${Element2}
    Sleep  2
    Capture Page Screenshot  ${ScreenshotName}.png
    Go Back

Wait Visible Click Element Wait Take Screenshot Close Window Return
    [Arguments]   ${ScreenshotName}  ${Element}
    Wait Until Element Is Visible  ${Element}
    Click Element  ${Element}
    ${Title_Var}  Get Window Titles
    Select Window  title=@{Title_Var}[1]
    Sleep  10
    Capture Page Screenshot  ${ScreenshotName}.png
    Close Window
    Select Window  title=@{Title_Var}[0]

Click Wait Load Take Screenshot Click
    [Arguments]   ${ScreenshotName}  ${Element}  ${Element2}
    Wait Until Element Is Visible  ${Element}
    Click Element  ${Element}
    Wait Until Element Is Visible  ${Element2}
    Sleep  2
    Capture Page Screenshot  ${ScreenshotName}.png
    Click Element  ${Element2}

Click Click Wait Load Take Screenshot Return
    [Arguments]   ${ScreenshotName}  ${Element}  ${Element2}  ${Element3}
    Wait Until Element Is Visible  ${Element}
    Click Element  ${Element}
    Wait Until Element Is Visible  ${Element2}
    Click Element  ${Element2}
    Wait Until Element Is Visible  ${Element3}
    Sleep  2
    Capture Page Screenshot  ${ScreenshotName}.png
    Go Back

Scroll Load Click Wait Take Screenshot Close Window Return
    [Arguments]   ${ScreenshotName}  ${Element}
    Wait Until Element Is Visible  ${Element}
    Scroll Element Into View  ${Element}
    Click Element  ${Element}
    ${Title_Var}  Get Window Titles
    Select Window  title=@{Title_Var}[1]
    Sleep  10
    Capture Page Screenshot  ${ScreenshotName}.png
    Close Window
    Select Window  title=@{Title_Var}[0]

Scroll Play Wait Take Screenshot Reload
    [Arguments]   ${ScreenshotName}  ${ScreenshotName2}  ${Element}  ${yC}  ${xC}
    Wait Until Element Is Visible  ${Element}
    Scroll Element Into View  ${Element}
    Click Element At Coordinates  ${Element}  ${xC}  ${yC}
    Sleep  5
    Sleep  60
    Capture Page Screenshot  ${ScreenshotName}.png
    Sleep  240
    Capture Page Screenshot  ${ScreenshotName2}.png
    Reload Page

Load URL Wait For Element Click Wait For Element Wait Take Screenshot
    [Arguments]   ${ScreenshotName}  ${Element}  ${URL}  ${Element2}
    Go To  ${URL}
    Wait Until Element Is Visible  ${Element}
    Click Element  ${Element}
    Wait Until Element Is Visible  ${Element2}
    Sleep  2
    Capture Page Screenshot  ${ScreenshotName}.png

Mouse Over Click Wait For Element Wait Take Screenshot Return
    [Arguments]   ${ScreenshotName}  ${Element}  ${Element2}  ${Element3}
    Wait Until Element Is Visible  ${Element}
    Mouse Over  ${Element}
    Wait Until Element Is Visible  ${Element2}
    Click Element  ${Element2}
    Wait Until Element Is Visible  ${Element3}
    Sleep  2
    Capture Page Screenshot  ${ScreenshotName}.png
    Go Back

Wait Scroll Click Wait Return
    [Arguments]   ${Element}  ${Element2}
    Wait Until Element Is Visible  ${Element}
    Scroll Element Into View  ${Element}
    Click Element  ${Element}
    Wait Until Element Is Visible  ${Element2}
    Sleep  1
    Go Back

Wait Scroll Click Wait Return Store
    [Arguments]   ${Element}
    Wait Until Element Is Visible  ${Element}
    Scroll Element Into View  ${Element}
    Click Element  ${Element}
    Sleep  3
    Go Back

Wait Scroll Click Wait Close
    [Arguments]   ${Element}
    Wait Until Element Is Visible  ${Element}
    Scroll Element Into View  ${Element}
    Click Element  ${Element}
    ${Title_Var}  Get Window Titles
    Select Window  title=@{Title_Var}[1]
    Sleep  10
    Close Window
    Select Window  title=@{Title_Var}[0]

Input Click Wait Take Screenshot
    [Arguments]   ${ScreenshotName}  ${InputElement}  ${InputValue}  ${ButtonElement}
    Wait Until Element Is Visible  ${InputElement}
    Wait Until Element Is Visible  ${ButtonElement}
    Input Text  ${InputElement}  ${InputValue}
    Click Element  ${Button Element}
    Sleep  2
    Capture Page Screenshot  ${ScreenshotName}.png

Make Input
    [Arguments]   ${InputElement}  ${InputValue}
    Wait Until Element Is Visible  ${InputElement}
    Input Text  ${InputElement}  ${InputValue}

Press Button Wait Take Screenshot
    [Arguments]   ${ScreenshotName}  ${ButtonElement}
    Wait Until Element Is Visible  ${ButtonElement}
    Click Element  ${Button Element}
    Sleep  2
    Capture Page Screenshot  ${ScreenshotName}.png

Click Wait Take Screenshot
    [Arguments]   ${Element}  ${ScreenshotName}
    Wait Until Element Is Visible  ${Element}
    Click Element  ${Element}
    Sleep  2
    Capture Page Screenshot  ${ScreenshotName}.png

Scroll Click Wait Take Screenshot
    [Arguments]   ${ScreenshotName}  ${Element}
    Wait Until Element Is Visible  ${Element}
    Scroll Element Into View  ${Element}
    Click Element  ${Element}
    Sleep  2
    Capture Page Screenshot  ${ScreenshotName}.png

Click And Wait
    [Arguments]   ${Element} 
    Wait Until Element Is Visible  ${Element}
    Click Element  ${Element}
    Sleep  2

Select Drop Down By Key Presses
    [Arguments]   ${Element}  ${Keys}
    Wait Until Element Is Visible  ${Element}
    Click Element  ${Element}
    Press Keys  ${Element}  ${Keys}