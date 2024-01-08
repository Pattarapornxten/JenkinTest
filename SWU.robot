*** Settings ***
Documentation 	A test suite with a single test for valid login.
...  
...         This test has a workflow that is created using keywords in
...         the imported resource file.

Library           SeleniumLibrary


*** Variables ***
${SERVER}       http://159.138.234.206/login
${BROWSER}      chrome
${mail}         tester1@xten-tecnology.com
${password}     swu@min1234
${Empty}        


*** Test Cases *** 
Login 
    Open Browser     ${SERVER}   ${BROWSER} 
    Maximize Browser window
    Input text        //*[@name="email"]          ${mail}
    Input text        //*[@name="password"]       ${password}
    Click Element     //*[@type="submit"]
    Sleep   5s
    Capture page Screenshot
    # next page
    Click Element       //*[@aria-label="Next page"]
    Capture page Screenshot

Dashboard
    Click Element      //*[@aria-label="Side nav toggle icon"]
    Sleep   5s
    Click Element       //*[@routerlink="/dashboard"]
    Sleep   5s
    # kWh
    Capture page Screenshot
    # THB 
    Click Element       css:#box-content > div > div:nth-child(1) > div.ng-star-inserted > button:nth-child(2) > span.mat-button-wrapper
    Sleep   5s
    Capture page Screenshot
    # kgco2
    Click Element       css:#box-content > div > div:nth-child(1) > div.ng-star-inserted > button:nth-child(3) > span.mat-button-wrapper
    Sleep   5s
    Capture page Screenshot

    # DAY
    Click Element       //*[@aria-posinset="1"]
    Sleep   5s
    Capture page Screenshot
    # WEEK
    Click Element       //*[@aria-posinset="2"]
    Sleep   5s
    Capture page Screenshot
    # MONTH
    Click Element       //*[@aria-posinset="3"]
    Sleep   5s
    Capture page Screenshot
    # YEAR
    Click Element       //*[@aria-posinset="4"]
    Sleep   5s
    Capture page Screenshot

Sensor
    Click Element      //*[@aria-label="Side nav toggle icon"]
    Sleep   5s
    Click Element       //*[@routerlink="/sensor"]
    Sleep   5s
    Capture page Screenshot
    scroll element into view        css:#box-content > div > div:nth-child(2) > mat-card > mat-card-content > table > tbody > tr:nth-child(21) > td.mat-cell.cdk-cell.cdk-column-num.mat-column-num.ng-star-inserted
    Capture page Screenshot
    
View detail Sensor - Sensor history 
    # Sensor off อาคารคณะเภสัชศาสตร์ 
    Element Text Should Be        css:#box-content > div > div:nth-child(2) > mat-card > mat-card-content > table > tbody > tr:nth-child(18) > td.mat-cell.cdk-cell.cdk-column-building.mat-column-building.ng-star-inserted              อาคารคณะเภสัชศาสตร์ 
    Click Element   css:#box-content > div > div:nth-child(2) > mat-card > mat-card-content > table > tbody > tr:nth-child(18) > td.mat-cell.cdk-cell.cdk-column-history.mat-column-history.ng-star-inserted > fa-icon > svg
    Sleep   5s
    Element Text Should Be      css:#box-content > div > div.ng-star-inserted > mat-card > mat-card-content > table > tbody > tr > td.mat-cell.cdk-cell.cdk-column-building.mat-column-building.ng-star-inserted        อาคารคณะเภสัชศาสตร์ 
    Capture page Screenshot
    # Sensor on   
    Click Element      //*[@aria-label="Side nav toggle icon"]
    Sleep   5s
    Click Element       //*[@routerlink="/sensor"]
    Sleep   5s 
    Element Text Should Be      css:#box-content > div > div:nth-child(2) > mat-card > mat-card-content > table > tbody > tr:nth-child(3) > td.mat-cell.cdk-cell.cdk-column-building.mat-column-building.ng-star-inserted           อาคารห้องสมุดองครักษ์     
    Click Element   css:#box-content > div > div:nth-child(2) > mat-card > mat-card-content > table > tbody > tr:nth-child(3) > td.mat-cell.cdk-cell.cdk-column-history.mat-column-history.ng-star-inserted > fa-icon > svg
    Sleep   5s
    Element Text Should Be      css:#box-content > div > div.ng-star-inserted > mat-card > mat-card-content > table > tbody > tr > td.mat-cell.cdk-cell.cdk-column-building.mat-column-building.ng-star-inserted         อาคารห้องสมุดองครักษ์  
    Capture page Screenshot
    Close Browser

Login2
    Open Browser     ${SERVER}   ${BROWSER} 
    Maximize Browser window
    Input text        //*[@name="email"]          ${mail}
    Input text        //*[@name="password"]       ${password}
    Click Element     //*[@type="submit"]
    Sleep   5s

Expolore
    Click Element      //*[@aria-label="Side nav toggle icon"]
    Sleep   5s
    Click Element       //*[@routerlink="/explore"]
    Sleep   5s
    Capture page Screenshot
    # Sensor
    Click Element       //*[@formcontrolname="meter_id"]
    Click Element       css:#mat-option-7 > span
    # Parameter kwh
    Click Element       //*[@formcontrolname="parameter"]
    Click Element       css:#mat-option-28 > span
    # Date
    Click Element       //*[@aria-label="Open calendar"]
    Click Element       css:#mat-datepicker-0 > div > mat-month-view > table > tbody > tr:nth-child(3) > td:nth-child(1) > button > div.mat-calendar-body-cell-content.mat-focus-indicator
    Click Element       css:#mat-datepicker-0 > div > mat-month-view > table > tbody > tr:nth-child(3) > td:nth-child(7) > button > div.mat-calendar-body-cell-content.mat-focus-indicator

    Click Element       //*[@type="submit"]
    Sleep   5s
    Capture page Screenshot

    # Parameter tap
    Click Element       //*[@formcontrolname="parameter"]
    Click Element       css:#mat-option-29 > span
    Click Element       //*[@type="submit"]
    Sleep   3s
    Capture page Screenshot
    # Parameter pf
    Click Element       //*[@formcontrolname="parameter"]
    Click Element       css:#mat-option-30 > span
    Click Element       //*[@type="submit"]
    Sleep   3s
    Capture page Screenshot
    # Parameter freq
    Click Element       //*[@formcontrolname="parameter"]
    Click Element       css:#mat-option-31 > span
    Click Element       //*[@type="submit"]
    Sleep   3s
    Capture page Screenshot
    # Parameter v
    Click Element       //*[@formcontrolname="parameter"]
    Click Element       css:#mat-option-32 > span
    Click Element       //*[@type="submit"]
    Sleep   3s
    Capture page Screenshot
    # Parameter i
    Click Element       //*[@formcontrolname="parameter"]
    Click Element       css:#mat-option-33 > span
    Click Element       //*[@type="submit"]
    Sleep   5s
    Capture page Screenshot

Report Energy
    Click Element      //*[@aria-label="Side nav toggle icon"]
    Sleep   5s
    Click Element       //*[@routerlink="/report"]
    Sleep   5s
    Capture page Screenshot
    # DAY
    Click Element       css:#box-content > div > div > div:nth-child(2) > button:nth-child(1) > span.mat-button-wrapper
    Sleep   5s
    Capture page Screenshot
    # WEEK
    Click Element       css:#box-content > div > div > div:nth-child(2) > button:nth-child(2) > span.mat-button-wrapper
    Sleep   5s
    Capture page Screenshot

Work Flow 
    Click Element      //*[@aria-label="Side nav toggle icon"]
    Sleep   5s
    Click Element       //*[@routerlink="/graph"]
    #Capture page Screenshot

Setting Notification
    Click Element      //*[@aria-label="Side nav toggle icon"]
    Sleep   5s
    Click Element       //*[@class="mat-list-item mat-focus-indicator parent ng-star-inserted"]
    Sleep   5s
    Capture page Screenshot
    # Notification
    Click Element       //*[@routerlink="/notification"]
    Sleep   5s
    Capture page Screenshot

    Click Element      //*[@aria-label="Side nav toggle icon"]
    Sleep   5s
    Click Element      //*[@routerlink="/group"]
    Sleep   5s
    Capture page Screenshot

    Click Element      //*[@aria-label="Side nav toggle icon"]
    Sleep   5s
    Click Element      //*[@routerlink="/elec-standard"]
    Sleep   5s
    Capture page Screenshot
    Close Browser
