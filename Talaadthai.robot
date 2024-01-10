*** Settings ***
Documentation 	A test suite with a single test for valid login.
...  
...         This test has a workflow that is created using keywords in
...         the imported resource file.
Library           SeleniumLibrary

# Check data meter & report
# Don't null 
# Don't be -

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
    Sleep   15s 

# -----------  -----------  ----------- Meter Energy -----------  -----------  ----------- 
Energy      
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(2) > div > button:nth-child(2) > span.mat-button-wrapper > mat-icon
    Sleep       3s
    Click Element       css:#mat-dialog-1 > app-widgets > div > mat-card.mat-card.mat-focus-indicator.select > div > div > fa-icon > svg > path
    Sleep       3s
    Element Text Should be         css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(2) > div > div             Energy Meter 

# -----------  ----------- ----------- Check DATA Energy Meter ----------- -----------  ----------- 

Status Energy Meter      
    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep       3s 
    Click Element       //*[@routerlink="/meter"]

Check DATA Energy Meter - Central area
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       2s
    Click Element       //*[@value="central area"]
    Sleep       5s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Have meter - Check Value
    ...    ELSE
    ...    Not have meter

Check DATA Energy Meter - Central area N8
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       2s
    Click Element       //*[@value="central area N8"]
    Sleep       5s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Have meter - Check Value
    ...    ELSE
    ...    Not have meter

Check DATA Energy Meter - Container yard
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       2s
    Click Element       //*[@value="container yard"]
    Sleep       5s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Have meter - Check Value
    ...    ELSE
    ...    Not have meter

Check DATA Energy Meter - International fruit
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       2s
    Click Element       //*[@value="international fruit"]
    Sleep       5s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Have meter - Check Value
    ...    ELSE
    ...    Not have meter

Check DATA Energy Meter - Season fruit
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       2s
    Click Element       //*[@value="season fruit"]
    Sleep       5s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Have meter - Check Value
    ...    ELSE
    ...    Not have meter

Check DATA Energy Meter - Talaadthai
    Sleep   10s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       2s
    Click Element       //*[@value="talaadthai"]
    Sleep       5s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Have meter - Check Value
    ...    ELSE
    ...    Not have meter

# -----------  ----------- ----------- OFFLINE -----------  ----------- -----------

Check Meter offline - central area
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       2s
    Click Element       //*[@value="central area"]
    Sleep       2s
    Input Text      //*[@id="mat-input-2"]     Offline
    Sleep       4s
    ${is_eabled}     Run Keyword And Return Status      Element Should Be Enabled       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Meter offline
    ...    ELSE
    ...    Not have meter offline
    Clear Element Text        //*[@id="mat-input-2"]
    
Check Meter offline - central area N8
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       2s
    Click Element       //*[@value="central area N8"]
    Sleep       2s
    Input Text      //*[@id="mat-input-2"]     Offline
    Sleep       4s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Meter offline
    ...    ELSE
    ...    Not have meter offline
    Clear Element Text        //*[@id="mat-input-2"]

Check Meter offline - Container yard
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       2s
    Click Element       //*[@value="container yard"]
    Sleep       2s
    Input Text      //*[@id="mat-input-2"]     Offline
    Sleep       4s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Meter offline
    ...    ELSE
    ...    Not have meter offline
    Clear Element Text        //*[@id="mat-input-2"]

Check Meter offline - International fruit
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       2s
    Click Element       //*[@value="international fruit"]
    Sleep       2s
    Input Text      //*[@id="mat-input-2"]     Offline
    Sleep       4s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Meter offline
    ...    ELSE
    ...    Not have meter offline
    Clear Element Text        //*[@id="mat-input-2"]

Check Meter offline - Season fruit
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       2s
    Click Element       //*[@value="season fruit"]
    Sleep       2s
    Input Text      //*[@id="mat-input-2"]     Offline
    Sleep       4s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Meter offline
    ...    ELSE
    ...    Not have meter offline
    Clear Element Text        //*[@id="mat-input-2"]

Check Meter offline - Talaadthai
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep       2s
    Click Element       //*[@value="talaadthai"]
    Sleep       2s
    Input Text      //*[@id="mat-input-2"]     Offline
    Sleep       4s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Meter offline
    ...    ELSE
    ...    Not have meter offline
    Clear Element Text        //*[@id="mat-input-2"]

# ----------- ----------- ----------- Check DATA Energy Report ----------- ----------- -----------

Report 
    Click Element           css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(1) > div:nth-child(1) > button > span.mat-button-wrapper > mat-icon
    Sleep       3s
    Click Element           //*[@routerlink="/report"]

Report - central area
    Sleep       5s 
    Click Element           css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Click Element       //*[@value="central area"]
    Sleep   5s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > div:nth-child(2) > div:nth-child(2) > div > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Have DATA - Check Value
    ...    ELSE
    ...    Not have DATA

Report - central area N8
    Sleep       5s 
    Click Element           css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Click Element       //*[@value="central area N8"]
    Sleep   5s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > div:nth-child(2) > div:nth-child(2) > div > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Have DATA - Check Value
    ...    ELSE
    ...    Not have DATA

Report - Container yard
    Sleep       5s 
    Click Element           css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Click Element       //*[@value="container yard"]
    Sleep   5s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > div:nth-child(2) > div:nth-child(2) > div > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Have DATA - Check Value
    ...    ELSE
    ...    Not have DATA

Report - international fruit
    Sleep       5s 
    Click Element           css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Click Element       //*[@value="international fruit"]
    Sleep   5s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > div:nth-child(2) > div:nth-child(2) > div > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Have DATA - Check Value
    ...    ELSE
    ...    Not have DATA

Report - Season fruit
    Sleep       5s 
    Click Element           css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Click Element       //*[@value="season fruit"]
    Sleep   5s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > div:nth-child(2) > div:nth-child(2) > div > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Have DATA - Check Value
    ...    ELSE
    ...    Not have DATA

Report - Talaadthai
    Sleep       5s 
    Click Element           css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Click Element       //*[@value="talaadthai"]
    Sleep   5s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > div:nth-child(2) > div:nth-child(2) > div > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Have DATA - Check Value
    ...    ELSE
    ...    Not have DATA

# -----------  -----------  ----------- Meter Water -----------  -----------  ----------- 

Water
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(2) > div > button:nth-child(2) > span.mat-button-wrapper > mat-icon
    Sleep       3s
    Click Element       css:#mat-dialog-22 > app-widgets > div > mat-card:nth-child(2)
    Sleep       3s
    Element Text Should be         css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(2) > div > div              Water Meter 

Water Meter 
    Click element           css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(1) > div:nth-child(1) > button > span.mat-button-wrapper > mat-icon
    Sleep    3s
    Click Element           //*[@routerlink="/meter"]
    Sleep    3s

Check DATA Water Meter - Central area
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep    3s
    Click Element       //*[@value="central area"]
    Sleep    5s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Have meter - water
    ...    ELSE
    ...    Not have meter water

Check offline Water Meter - Central area
    Input Text      //*[@id="mat-input-5"]     Offline
    
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Meter offline 
    ...    ELSE
    ...    Not have meter offline
    Clear Element Text      //*[@id="mat-input-5"]     

Check DATA Water Meter - Central area N8
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep    3s
    Click Element       //*[@value="central area N8"]
    Sleep    5s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Have meter - water
    ...    ELSE
    ...    Not have meter water

Check offline Water Meter - Central area N8
    Input Text      //*[@id="mat-input-5"]     Offline
    
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Meter offline
    ...    ELSE
    ...    Not have meter water
    Clear Element Text      //*[@id="mat-input-5"]

Check DATA Water Meter - Container yard
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep    3s
    Click Element       //*[@value="container yard"]
    Sleep    5s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Have meter - water
    ...    ELSE
    ...    Not have meter water

Check offline Water Meter - Container yard
    Input Text      //*[@id="mat-input-5"]     Offline
    
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Meter offline
    ...    ELSE
    ...    Not have meter water
    Clear Element Text      //*[@id="mat-input-5"]

Check DATA Water Meter - International fruit
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep    3s
    Click Element       //*[@value="international fruit"]
    Sleep    5s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Have meter - water
    ...    ELSE
    ...    Not have meter water

Check offline Water Meter - International fruit
    Input Text      //*[@id="mat-input-5"]     Offline
    
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Meter offline
    ...    ELSE
    ...    Not have meter water
    Clear Element Text      //*[@id="mat-input-5"]

Check DATA Water Meter - Season fruit
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep    3s
    Click Element       //*[@value="season fruit"]
    Sleep    5s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Have meter - water
    ...    ELSE
    ...    Not have meter water

Check offline Water Meter - Season fruit
    Input Text      //*[@id="mat-input-5"]     Offline
    
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Meter offline
    ...    ELSE
    ...    Not have meter water
    Clear Element Text      //*[@id="mat-input-5"]

Check DATA Water Meter - Talaadthai
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep    3s
    Click Element       //*[@value="talaadthai"]
    Sleep    5s
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Have meter - water
    ...    ELSE
    ...    Not have meter water

Check offline Water Meter - Talaadthai
    Input Text      //*[@id="mat-input-5"]     Offline
    
    ${is_eabled}     Run Keyword And Return Status     Element Should Be Enabled    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(1) > div:nth-child(2) > button
    Run Keyword If    '${is_eabled}' == 'True'
    ...    Meter offline
    ...    ELSE
    ...    Not have meter water
    Clear Element Text      //*[@id="mat-input-5"]

*** Keywords ***

# ======== Energy Meter ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ========
Have meter - Check Value
    Log    Element is enabled
    Sleep   3s
    Click Element       //*[@sortactiondescription="Sort by data"]
    Element Text Should Not Be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-data.mat-column-data.ng-star-inserted            ${Empty}
    ${element_text} =    Get Text       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-data.mat-column-data.ng-star-inserted
    ${first_char} =    Set Variable   "${element_text[0]}"
    Log    ${first_char}
    Should Not Be Equal     ${first_char}    "-"
    # Date
    Click Element       //*[@sortactiondescription="Sort by time"]
    Element Text Should Not Be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-time.mat-column-time.ng-star-inserted            ${Empty}
    # Meter ID
    Click Element       //*[@sortactiondescription="Sort by meter_id"]
    Element Text Should Not Be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted            ${Empty}
    # Conv_IP
    Click Element       //*[@sortactiondescription="Sort by conv_ip"]
    Element Text Should Not Be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted            ${Empty}
    # Meter Name
    Click Element       //*[@sortactiondescription="Sort by name"]
    Element Text Should Not Be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted            ${Empty}
    # Zone
    Click Element       //*[@sortactiondescription="Sort by zone"]
    Element Text Should Not Be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-zone.mat-column-zone.ng-star-inserted            ${Empty}
    # Location
    Click Element       //*[@sortactiondescription="Sort by location"]
    Element Text Should Not Be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-location.mat-column-location.ng-star-inserted            ${Empty}

Not have meter
    Log    Element is disabled
    Element Text Should Be         css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr > td             No data matching the filter
    Sleep  3s

# ======== Meter Offline ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ========

Meter offline
    Log    Element is enabled
    Sleep       3s
    ${Result_Meteroffline} =    Get Text       //*[@class="mat-paginator-range-label"]
    
Not have meter offline
    Log    Element is disabled
    Sleep       3s
    # ${notcap} =    Set Variable     Not

# Meter offline
#     Log    Element is enabled
#     Sleep       3s
#     ${Result_Meteroffline} =    Get Text       //*[@class="mat-paginator-range-label"]

# ======== Water Meter ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ========

Have meter - water
    Log    Element is enabled
    Click Element       //*[@sortactiondescription="Sort by data"]
    Sleep       2s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-data.mat-column-data.ng-star-inserted            ${Empty}
    ${element_text} =    Get Text       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-data.mat-column-data.ng-star-inserted
    ${first_char} =    Set Variable   "${element_text[0]}"
    Log    ${first_char}
    Should Not Be Equal     ${first_char}    "-"
    #    Date Time 
    Click Element       //*[@sortactiondescription="Sort by time"]
    Element Text Should Not Be       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-time.mat-column-time.ng-star-inserted          ${Empty}
    #    Meter ID 
    Click Element       //*[@sortactiondescription="Sort by meter_id"]
    Element Text Should Not Be       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted           ${Empty}
    #    Converter IP
    Click Element       //*[@sortactiondescription="Sort by conv_ip"]
    Element Text Should Not Be       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted           ${Empty}
    #    Meter Name
    Click Element       //*[@sortactiondescription="Sort by name"]
    Element Text Should Not Be       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted           ${Empty}
    #    Zone
    Click Element       //*[@sortactiondescription="Sort by zone"]
    Element Text Should Not Be       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-zone.mat-column-zone.ng-star-inserted           ${Empty}
    #    Location
    Click Element       //*[@sortactiondescription="Sort by location"]
    Element Text Should Not Be       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-location.mat-column-location.ng-star-inserted           ${Empty}

Not have meter water
    Log    Element is disabled
    Sleep       3s
    #${notcap} =    Set Variable     Not

# ======== Report ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ======== ========

Have DATA - Check Value
    Log    Element is enabled
    # ตรวจสอบค่า Null 
    # * Consumption
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-51.cdk-column-consumption.mat-column-consumption.ng-star-inserted
    Sleep  2s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-consumption.mat-column-consumption.ng-star-inserted          ${Empty}
    # ------- ตรวจสอบค่าติดลบ
    ${element_text} =    Get Text       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-consumption.mat-column-consumption.ng-star-inserted
    ${first_char} =    Set Variable   "${element_text[0]}"
    Log    ${first_char}
    Should Not Be Equal     ${first_char}    "-"

    # * Recent Reading 
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-50.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted
    Sleep  2s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted            ${Empty}
    # ------- ตรวจสอบค่าติดลบ
    ${element_text} =    Get Text       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted
    ${first_char} =    Set Variable   "${element_text[0]}"
    Log    ${first_char}
    Should Not Be Equal     ${first_char}    "-"

    # * Previous Reading 
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-49.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted
    Sleep  2s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted        ${Empty}
    # ------- ตรวจสอบค่าติดลบ
    ${element_text} =    Get Text       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted
    ${first_char} =    Set Variable   "${element_text[0]}"
    Log    ${first_char}
    Should Not Be Equal     ${first_char}    "-"

    # * Meter ID
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-48.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted
    Sleep  2s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted        ${Empty}
    # ------- ตรวจสอบค่าติดลบ
    ${element_text} =    Get Text       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted
    ${first_char} =    Set Variable   "${element_text[0]}"
    Log    ${first_char}
    Should Not Be Equal     ${first_char}    "-"

    # Converter IP
    Click Element           css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-47.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted
    Sleep  2s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted           ${Empty}
    # Meter Name
    Click Element           css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-46.cdk-column-name.mat-column-name.ng-star-inserted
    Sleep  2s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted                ${Empty}

Not have DATA
    Sleep       3s
    #${notcap} =    Set Variable     Not
