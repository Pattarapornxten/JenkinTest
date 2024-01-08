*** Settings ***
Documentation 	A test suite with a single test for valid login.
...  
...         This test has a workflow that is created using keywords in
...         the imported resource file.
Library           SeleniumLibrary

*** Variables ***
${SERVER}       https://dpuiot.dpu.ac.th/login
${BROWSER}      chrome
${mail}         admin
${password}     dpux10
${Empty}        


*** Test Cases *** 
Login 
    Open Browser     ${SERVER}   ${BROWSER} 
    Maximize Browser window
    Input text        //*[@name="email"]          ${mail}
    Input text        //*[@name="password"]       ${password}
    Click Element     //*[@type="submit"]

#Overview
#    Click Element       //*[@aria-label="Side nav toggle icon"]
#    Sleep   5s
#    Click Element       //*[@href="/overview"]
#    Capture page Screenshot

Dashboard
    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep   5s
    Click Element       //*[@href="/dashboard"]
    Sleep   5s
    Capture page Screenshot
Buildind 1
    # Default 
    scroll element into view            css:#box-content > div > div:nth-child(5) > mat-card > mat-card-title > div
    Capture page Screenshot
    # Day
    Click Element       //*[@aria-posinset="1"]
    Sleep  5s  
    Capture page Screenshot
    # Week
    Click Element       //*[@aria-posinset="2"]
    Sleep  5s  
    Capture page Screenshot
    # Month
    Click Element       //*[@aria-posinset="3"]
    Sleep  5s  
    Capture page Screenshot
    # Year
    Click Element       //*[@aria-posinset="4"]
    Sleep  5s  
    Capture page Screenshot

    scroll element into view            css:#box-content > div > div:nth-child(6) > mat-card > mat-card-title > div
    Capture page Screenshot

    scroll element into view            css:#box-content > div > div:nth-child(7) > mat-card > mat-card-title > div
    Element Text Should Not be          css:#box-content > div > div:nth-child(6) > mat-card > mat-card-content > table > tbody > tr:nth-child(8) > td.mat-cell.cdk-cell.cdk-column-usage.mat-column-usage.ng-star-inserted         ${Empty}
    Element Text Should Not be          css:#box-content > div > div:nth-child(6) > mat-card > mat-card-content > table > tbody > tr:nth-child(8) > td.mat-cell.cdk-cell.cdk-column-status.mat-column-status.ng-star-inserted           ${Empty}
    Capture page Screenshot

    scroll element into view            css:#box-content > div > div:nth-child(7) > mat-card > mat-card-content > table > tbody > tr:nth-child(10) > td.mat-cell.cdk-cell.cdk-column-num.mat-column-num.ng-star-inserted
    Capture page Screenshot

Buildind 2
    Click Element       //*[@id="mat-select-value-3"]
    Click Element       //*[@id="mat-option-3"]
    Sleep     5s
    Capture page Screenshot
    # Month
    scroll element into view    css:#box-content > div > div:nth-child(5) > mat-card > mat-card-title > div
    Capture page Screenshot
    # Day
    Click Element       //*[@aria-posinset="1"]
    Sleep     5s
    Capture page Screenshot
    # Week
    Click Element       //*[@aria-posinset="2"]
    Sleep     5s
    Capture page Screenshot
    # Mount
    Click Element       //*[@aria-posinset="3"]
    Sleep     5s
    Capture page Screenshot
    # Year
    Click Element       //*[@aria-posinset="4"]
    Sleep     5s
    Capture page Screenshot

    scroll element into view    css:#box-content > div > div:nth-child(6) > mat-card > mat-card-title > div
    Capture page Screenshot

    scroll element into view    css:#box-content > div > div:nth-child(7) > mat-card > mat-card-title > div
    Element Text Should Not be          css:#box-content > div > div:nth-child(6) > mat-card > mat-card-content > table > tbody > tr:nth-child(10) > td.mat-cell.cdk-cell.cdk-column-usage.mat-column-usage.ng-star-inserted        ${Empty}
    Element Text Should Not be          css:#box-content > div > div:nth-child(6) > mat-card > mat-card-content > table > tbody > tr:nth-child(10) > td.mat-cell.cdk-cell.cdk-column-status.mat-column-status.ng-star-inserted        ${Empty}
    Capture page Screenshot

    scroll element into view    css:#box-content > div > div:nth-child(7) > mat-card > mat-card-content > table > tbody > tr:nth-child(10) > td.mat-cell.cdk-cell.cdk-column-num.mat-column-num.ng-star-inserted
    Capture page Screenshot

Explore 
    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep       5s
    Click Element       //*[@routerlink="/explore"]
    Sleep       5s
    Capture page Screenshot
    # -------------- kmh ----------------
    # Sensor
    Click Element       //*[@formcontrolname="meter_name"]
    Sleep       5s
    Click Element       //*[@class="mat-option-text"]
    # Parameter
    Click Element       //*[@formcontrolname="parameter"]
    Sleep       5s
    Click Element       //*[@class="mat-option-text"]
    # Date
    Click Element       //*[@class="mat-datepicker-toggle-default-icon ng-star-inserted"]
    Click Element       css:#mat-datepicker-0 > div > mat-month-view > table > tbody > tr:nth-child(3) > td:nth-child(1) > button > div.mat-calendar-body-cell-content.mat-focus-indicator
    Click Element       css:#mat-datepicker-0 > div > mat-month-view > table > tbody > tr:nth-child(3) > td:nth-child(2) > button > div.mat-calendar-body-cell-content.mat-focus-indicator
    # Button submit
    Click Element       //*[@type="submit"]
    Sleep      5s
    Capture page Screenshot

Score
    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep   5s
    Click Element       //*[@routerlink="/score"]
    Sleep    5s
    Capture page Screenshot

Sensor
    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep    5s
    Click Element       //*[@href="/sensor"]
    Sleep    5s
    Capture page Screenshot
    #23
    scroll element into view        css:#box-content > div > div.ng-star-inserted > mat-card > mat-card-content > table > tbody > tr:nth-child(23) > td.mat-cell.cdk-cell.cdk-column-num.mat-column-num.ng-star-inserted
    Capture page Screenshot
    #37
    scroll element into view        css:#box-content > div > div.ng-star-inserted > mat-card > mat-card-content > table > tbody > tr:nth-child(37) > td.mat-cell.cdk-cell.cdk-column-num.mat-column-num.ng-star-inserted
    Capture page Screenshot
    #51
    scroll element into view        css:#box-content > div > div.ng-star-inserted > mat-card > mat-card-content > table > tbody > tr:nth-child(51) > td.mat-cell.cdk-cell.cdk-column-num.mat-column-num.ng-star-inserted
    Capture page Screenshot
    scroll element into view        css:#box-content > div > div.ng-star-inserted > mat-card > mat-card-content > table > tbody > tr:nth-child(60) > td.mat-cell.cdk-cell.cdk-column-num.mat-column-num.ng-star-inserted
    Capture page Screenshot
    

Workflow
    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep    5s
    Click Element       //*[@href="/workflow"]
    Sleep    5s
    Capture page Screenshot

Setting 

    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep   5s
    Click Element       //*[@class="mat-list-item mat-focus-indicator parent ng-star-inserted"]
    Sleep   5s
    Capture page Screenshot
    #    Menu Notification
    Click Element       //*[@routerlink="/notification"]
    Sleep   5s
    Capture page Screenshot
    #    Menu Group
    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep   5s
    Click Element       //*[@routerlink="/group"]
    Sleep   5s
    Capture page Screenshot
    #    Menu Elec-standard
    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep   5s
    Click Element       //*[@routerlink="/elec-standard"]
    Sleep   5s
    Capture page Screenshot

    Close Browser  
