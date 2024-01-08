*** Settings ***
Documentation 	A test suite with a single test for valid login.
...  
...         This test has a workflow that is created using keywords in
...         the imported resource file.
Library           SeleniumLibrary

*** Variables ***
${SERVER}       http://ems.entechsi-connect.com/login
${BROWSER}      chrome
${mail}         frasers.property@entechsi.com
${password}     adminEms
${tabel}        css:#box-content > div > div:nth-child(2) > mat-card > mat-card-content > table
${btn}          //*[@type="submit"]
${parameter}    //*[@formcontrolname="parameter"]

*** Test Cases *** 
Open Browser 
    Open Browser     ${SERVER}   ${BROWSER} 
    Maximize Browser window

Login 
    Input text          //*[@name="email"]          ${mail}
    Input text          //*[@name="password"]       ${password}
    Click Element       css:body > app-root > app-anonymous-layout > app-login > div > div > div:nth-child(2) > mat-card > div > div:nth-child(1) > mat-card-content > form > div > button > span.mat-button-wrapper
    
Dashboard
    Sleep   10s
    #Default - 
    Capture page Screenshot
    scroll element into view        css:#mat-tab-content-0-2 > div > div > div:nth-child(1) > canvas
    #DAY ON DAY
    Click Element       css:#mat-tab-label-0-0 > div > div > div
    Sleep   5s
    Capture page Screenshot
    #WEEK ON WEEK
    Click Element       css:#mat-tab-label-0-1 > div > div > div
    Sleep   5s
    Capture page Screenshot
    #MONTH ON MONTH
    Click Element       css:#mat-tab-label-0-2 > div > div > div
    Sleep   5s
    Capture page Screenshot
    #YEAR ON YEAR
    Click Element       css:#mat-tab-label-0-3> div > div > div
    Sleep   5s
    Capture page Screenshot

Sensor 
    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep   5s
    Click Element       //*[@routerlink="/sensor"]
    Sleep   15s
    #Capture page Screenshot
    #scroll element into view      css:#box-content > div > div:nth-child(2) > mat-card > mat-card-content > table > tbody > tr:nth-child(20) > td.mat-cell.cdk-cell.cdk-column-num.mat-column-num.ng-star-inserted
    Capture page Screenshot
    Element Text Should Not Be         css:#box-content > div > div:nth-child(2) > mat-card > mat-card-content > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-sensor_name.mat-column-sensor_name.ng-star-inserted          ${Empty}

Explorer
    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep   5s
    Click Element       //*[@routerlink="/explore"]
    Sleep   5s
    Capture page Screenshot
    # Sensor
    Click Element       //*[@formcontrolname="meter_id"]
    Click Element       css:#mat-option-5 > span
    # Parameter kwh
    Click Element      //*[@formcontrolname="parameter"]
    Click Element       css:#mat-option-25 > span
    # date
    Click Element       //*[@class="mat-form-field-suffix ng-tns-c25-20 ng-star-inserted"]
    Click Element       css:#mat-datepicker-0 > div > mat-month-view > table > tbody > tr:nth-child(3) > td:nth-child(1) > button > div.mat-calendar-body-cell-content.mat-focus-indicator
    Click Element       css:#mat-datepicker-0 > div > mat-month-view > table > tbody > tr:nth-child(3) > td:nth-child(2) > button > div.mat-calendar-body-cell-content.mat-focus-indicator
    Sleep   10s

    #click submit 
    Click Element      //*[@type="submit"]
    Sleep   10s
    Capture page Screenshot

    # Parameter tap
    Click Element      //*[@formcontrolname="parameter"]
    Click Element       css:#mat-option-26 > span
    Click Element      //*[@type="submit"]
    Sleep   5s
    Capture page Screenshot

    # Parameter pf
    Click Element      //*[@formcontrolname="parameter"]
    Click Element       css:#mat-option-27 > span
    Click Element      //*[@type="submit"]
    Sleep   5s
    Capture page Screenshot

    # Parameter freq 
    Click Element      //*[@formcontrolname="parameter"]
    Click Element       css:#mat-option-28 > span
    Click Element      //*[@type="submit"]
    Sleep   5s
    Capture page Screenshot

    # Parameter v 
    Click Element      //*[@formcontrolname="parameter"]
    Click Element       css:#mat-option-29 > span
    Click Element      //*[@type="submit"]
    Sleep   5s
    Capture page Screenshot

    # Parameter i
    Click Element      //*[@formcontrolname="parameter"]
    Click Element       css:#mat-option-30 > span
    Click Element      //*[@type="submit"]
    Sleep   5s
    Capture page Screenshot
Report Energy  
    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep   10s
    Click Element       //*[@routerlink="/report"]
    Sleep   15s
    Capture page Screenshot
    #DAY
    Click Element       css:#box-content > div > div > div:nth-child(2) > button:nth-child(1) > span.mat-button-wrapper
    Sleep   5s
    Capture page Screenshot
    #WEEK
    Click Element       css:#box-content > div > div > div:nth-child(2) > button:nth-child(2) > span.mat-button-wrapper
    Sleep   5s
    Capture page Screenshot
    #MONTH
    Click Element       css:#box-content > div > div > div:nth-child(2) > button:nth-child(3) > span.mat-button-wrapper
    Sleep   5s
    Capture page Screenshot

Diagram  
    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep   5s
    Click Element       //*[@class="full-width ng-star-inserted"]
    Sleep   5s
    Capture page Screenshot
    # Load Table
    Click Element       //*[@routerlink="/load-table"]
    Sleep   5s
    Capture page Screenshot
    # Plan Layout 
    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep   5s
    Click Element       //*[@routerlink="/plan-layout"]
    Sleep   5s
    Capture page Screenshot
    # Load Schedule 
    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep   5s
    Click Element       //*[@routerlink="/load-schedule"]
    Sleep   5s
    Capture page Screenshot
    # Conceptual Design 
    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep   5s
    Click Element       //*[@routerlink="/conceptual-design"]
    Sleep   5s
    Capture page Screenshot
    
    Close Browser
