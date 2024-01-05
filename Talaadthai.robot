*** Settings ***
Documentation 	A test suite with a single test for valid login.
...  
...         This test has a workflow that is created using keywords in
...         the imported resource file.
Library           SeleniumLibrary

*** Variables ***
${SERVER}       https://alpha-xten.com/login
${BROWSER}      chrome
${mail}         billing@talaadthai.com
${password}     @minx10
${table1}       //*[@class="mat-card-content"]
${Empty}        

*** Test Cases *** 
Open Browser 
    Open Browser     ${SERVER}   ${BROWSER} 
    Maximize Browser window

Login 
    Input text          //*[@name="email"]          ${mail}
    Input text          //*[@name="password"]       ${password}
    Click Element       //*[@type="submit"]
    Sleep      5s

# -----------  -----------  ----------- Energy -----------  -----------  ----------- 
Energy      
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(2) > div > button:nth-child(2) > span.mat-button-wrapper > mat-icon
    Sleep       3s
    Click Element       css:#mat-dialog-1 > app-widgets > div > mat-card.mat-card.mat-focus-indicator.select > div > div > fa-icon > svg > path
    Sleep       3s
    Element Text Should be         css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(2) > div > div             Energy Meter 

Status Energy Meter      
    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep       3s 
    Click Element       //*[@routerlink="/meter"]

EM - Central area
    Sleep   10s
# central area
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       2s
    Click Element       //*[@value="central area"]
    Sleep       2s
    Input Text       //*[@placeholder="Search"]         offline
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Enable - EM - Central area
    ...    ELSE
    ...    Disable - EM - Central area

EM - Central area N8
# central area N8
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       2s
    Click Element       //*[@value="central area N8"]
    Sleep       2s
    Input Text       //*[@placeholder="Search"]         offline
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Enable - EM - Central area
    ...    ELSE
    ...    Disable - EM - Central area

EM - Container yard
# container yard
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       2s
    Click Element       //*[@value="container yard"]
    Sleep       2s
    Input Text       //*[@placeholder="Search"]         offline
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Enable - EM - Central area
    ...    ELSE
    ...    Disable - EM - Central area

EM - international fruit
# international fruit
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       2s
    Click Element       //*[@value="international fruit"]
    Sleep       2s
    Input Text       //*[@placeholder="Search"]         offline
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Enable - EM - Central area
    ...    ELSE
    ...    Disable - EM - Central area

EM - season fruit
# season fruit
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       2s
    Click Element       //*[@value="season fruit"]
    Sleep       2s
    Input Text       //*[@placeholder="Search"]         offline
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Enable - EM - Central area
    ...    ELSE
    ...    Disable - EM - Central area

EM - talaadthai
# talaadthai
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       2s
    Click Element       //*[@value="talaadthai"]
    Sleep       2s
    Input Text       //*[@placeholder="Search"]         offline
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Enable - EM - Central area
    ...    ELSE
    ...    Disable - EM - Central area

# ======== ======== ======== Keywords ======== ======== ========
*** Keywords ***

Enable - EM - Central area
    Log    Element is enabled
    Sleep   3s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button

Disable - EM - Central area
    Log    Element is disabled
    Capture page Screenshot


# -----------  -----------  ----------- Water -----------  -----------  ----------- 

# -----------  -----------  ----------- Tank -----------  -----------  ----------- 
