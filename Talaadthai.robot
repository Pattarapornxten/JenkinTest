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
    Sleep   5s 

# -----------  -----------  ----------- Energy -----------  -----------  ----------- 
Energy      
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(2) > div > button:nth-child(2) > span.mat-button-wrapper > mat-icon
    Sleep       3s
    Click Element       css:#mat-dialog-1 > app-widgets > div > mat-card.mat-card.mat-focus-indicator.select > div > div > fa-icon > svg > path
    Sleep       3s
    Element Text Should be         css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(2) > div > div             Energy Meter 

# -----------  -----------  Status Energy Meter   -----------  ----------- 

Status Energy Meter      
    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep       3s 
    Click Element       //*[@routerlink="/meter"]

EM - Central area
    Sleep   10s
# ----------- central area
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
    
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Set Test Variable    ${result}       Have Meter OFFLINE
    ...    ELSE
    ...    Set Test Variable    ${result}       Not have Meter OFFLINE
    Log    ${result}

# ----------- central area N8
EM - Central area N8
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

    Run Keyword If    '${is_eabled}' == 'True'
    ...    Set Test Variable    ${result}       Have Meter OFFLINE
    ...    ELSE
    ...    Set Test Variable    ${result}       Not have Meter OFFLINE
    Log    ${result}

# ----------- container yard
EM - Container yard
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

    Run Keyword If    '${is_eabled}' == 'True'
    ...    Set Test Variable    ${result}       Have Meter OFFLINE
    ...    ELSE
    ...    Set Test Variable    ${result}       Not have Meter OFFLINE
    Log    ${result}

# ----------- international fruit
EM - international fruit
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

    Run Keyword If    '${is_eabled}' == 'True'
    ...    Set Test Variable    ${result}       Have Meter OFFLINE
    ...    ELSE
    ...    Set Test Variable    ${result}       Not have Meter OFFLINE
    Log    ${result}

# ----------- season fruit
EM - season fruit
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

    Run Keyword If    '${is_eabled}' == 'True'
    ...    Set Test Variable    ${result}       Have Meter OFFLINE
    ...    ELSE
    ...    Set Test Variable    ${result}       Not have Meter OFFLINE
    Log    ${result}

# ----------- talaadthai
EM - talaadthai
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

    Run Keyword If    '${is_eabled}' == 'True'
    ...    Set Test Variable    ${result}       Have Meter OFFLINE
    ...    ELSE
    ...    Set Test Variable    ${result}       Not have Meter OFFLINE
    Log    ${result}

# -----------  -----------  ----------- Status Water Meter -----------  -----------  ----------- 

Water      
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(2) > div > button:nth-child(2) > span.mat-button-wrapper > mat-icon
    Sleep       3s
    Click Element       css:#mat-dialog-9 > app-widgets > div > mat-card:nth-child(2)
    Sleep       3s
    Element Text Should be         css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(2) > div > div              Water Meter 
    Element Text Should be         css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > div > div > mat-card-title             Meter Monitoring 
    
# ----------- central area
W - central area
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       3s
    Click Element       //*[@value="central area"]
    Sleep       3s
    Input Text       //*[@placeholder="Search"]         offline
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Enable - WM - Central area
    ...    ELSE
    ...    Disable - WM - Central area

    Run Keyword If    '${is_eabled}' == 'True'
    ...    Set Test Variable    ${result}       Have Meter OFFLINE
    ...    ELSE
    ...    Set Test Variable    ${result}       Not have Meter OFFLINE
    Log    ${result}
    
# ----------- central area N8
W - central area N8
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       3s
    Click Element       //*[@value="central area N8"]
    Sleep       3s
    Input Text       //*[@placeholder="Search"]         offline
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Enable - WM - Central area
    ...    ELSE
    ...    Disable - WM - Central area

    Run Keyword If    '${is_eabled}' == 'True'
    ...    Set Test Variable    ${result}       Have Meter OFFLINE
    ...    ELSE
    ...    Set Test Variable    ${result}       Not have Meter OFFLINE
    Log    ${result}

# ----------- container yard
W - container yard
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       3s
    Click Element       //*[@value="container yard"]
    Sleep       3s
    Input Text       //*[@placeholder="Search"]         offline
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Enable - WM - Central area
    ...    ELSE
    ...    Disable - WM - Central area

    Run Keyword If    '${is_eabled}' == 'True'
    ...    Set Test Variable    ${result}       Have Meter OFFLINE
    ...    ELSE
    ...    Set Test Variable    ${result}       Not have Meter OFFLINE
    Log    ${result}

# ----------- international fruit
W - international fruit
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       3s
    Click Element       //*[@value="international fruit"]
    Sleep       3s
    Input Text       //*[@placeholder="Search"]         offline
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Enable - WM - Central area
    ...    ELSE
    ...    Disable - WM - Central area

    Run Keyword If    '${is_eabled}' == 'True'
    ...    Set Test Variable    ${result}       Have Meter OFFLINE
    ...    ELSE
    ...    Set Test Variable    ${result}       Not have Meter OFFLINE
    Log    ${result}

# ----------- season fruit
W - season fruit
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       3s
    Click Element       //*[@value="season fruit"]
    Sleep       3s
    Input Text       //*[@placeholder="Search"]         offline
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Enable - WM - Central area
    ...    ELSE
    ...    Disable - WM - Central area

    Run Keyword If    '${is_eabled}' == 'True'
    ...    Set Test Variable    ${result}       Have Meter OFFLINE
    ...    ELSE
    ...    Set Test Variable    ${result}       Not have Meter OFFLINE
    Log    ${result}

# ----------- talaadthai
W - talaadthai
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       3s
    Click Element       //*[@value="talaadthai"]
    Sleep       3s
    Input Text       //*[@placeholder="Search"]         offline
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Enable - WM - Central area
    ...    ELSE
    ...    Disable - WM - Central area

    Run Keyword If    '${is_eabled}' == 'True'
    ...    Set Test Variable    ${result}       Have Meter OFFLINE
    ...    ELSE
    ...    Set Test Variable    ${result}       Not have Meter OFFLINE
    Log    ${result}

# -----------  -----------  ----------- Status Tank Meter -----------  -----------  ----------- 
Tank 
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(2) > div > button:nth-child(2) > span.mat-button-wrapper > mat-icon
    Sleep       3s
    Click Element       css:#mat-dialog-17 > app-widgets > div > mat-card:nth-child(3)
    Sleep       3s
    Element Text Should be         css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(2) > div > div               High Tank 
    Element Text Should be         css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > div > div > mat-card-title             Meter Monitoring 
    
# ----------- central area
T - central area
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       3s
    Click Element       //*[@value="central area"]
    Sleep       3s
    Input Text       //*[@placeholder="Search"]         offline
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Enable - WM - Central area
    ...    ELSE
    ...    Disable - WM - Central area
    
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Set Test Variable    ${result}       Have Meter OFFLINE
    ...    ELSE
    ...    Set Test Variable    ${result}       Not have Meter OFFLINE
    Log    ${result}

# ----------- central area N8
T - central area N8
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       3s
    Click Element       //*[@value="central area N8"]
    Sleep       3s
    Input Text       //*[@placeholder="Search"]         offline
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Enable - WM - Central area
    ...    ELSE
    ...    Disable - WM - Central area

    Run Keyword If    '${is_eabled}' == 'True'
    ...    Set Test Variable    ${result}       Have Meter OFFLINE
    ...    ELSE
    ...    Set Test Variable    ${result}       Not have Meter OFFLINE
    Log    ${result}

# ----------- container yard
T - container yard
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       3s
    Click Element       //*[@value="container yard"]
    Sleep       3s
    Input Text       //*[@placeholder="Search"]         offline
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Enable - WM - Central area
    ...    ELSE
    ...    Disable - WM - Central area

    Run Keyword If    '${is_eabled}' == 'True'
    ...    Set Test Variable    ${result}       Have Meter OFFLINE
    ...    ELSE
    ...    Set Test Variable    ${result}       Not have Meter OFFLINE
    Log    ${result}

# ----------- international fruit
T - international fruit
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       3s
    Click Element       //*[@value="international fruit"]
    Sleep       3s
    Input Text       //*[@placeholder="Search"]         offline
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Enable - WM - Central area
    ...    ELSE
    ...    Disable - WM - Central area

    Run Keyword If    '${is_eabled}' == 'True'
    ...    Set Test Variable    ${result}       Have Meter OFFLINE
    ...    ELSE
    ...    Set Test Variable    ${result}       Not have Meter OFFLINE
    Log    ${result}

# ----------- season fruit
T - season fruit
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       3s
    Click Element       //*[@value="season fruit"]
    Sleep       3s
    Input Text       //*[@placeholder="Search"]         offline
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Enable - WM - Central area
    ...    ELSE
    ...    Disable - WM - Central area

    Run Keyword If    '${is_eabled}' == 'True'
    ...    Set Test Variable    ${result}       Have Meter OFFLINE
    ...    ELSE
    ...    Set Test Variable    ${result}       Not have Meter OFFLINE
    Log    ${result}

# ----------- talaadthai
T - talaadthai
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       3s
    Click Element       //*[@value="talaadthai"]
    Sleep       3s
    Input Text       //*[@placeholder="Search"]         offline
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Enable - WM - Central area
    ...    ELSE
    ...    Disable - WM - Central area

    Run Keyword If    '${is_eabled}' == 'True'
    ...    Set Test Variable    ${result}       Have Meter OFFLINE
    ...    ELSE
    ...    Set Test Variable    ${result}       Not have Meter OFFLINE
    Log    ${result}

# ======== ======== ======== Keywords ======== ======== ========
*** Keywords ***

Enable - EM - Central area
    Log    Element is enabled
    Sleep   3s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button

Disable - EM - Central area
    Log    Element is disabled
    # Capture page Screenshot
    Sleep  3s

Enable - WM - Central area
    Log    Element is enabled
    Sleep   3s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button

Disable - WM - Central area
    Log    Element is disabled
    # Capture page Screenshot
    Sleep  3s
