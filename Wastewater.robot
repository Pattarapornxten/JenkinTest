*** Settings ***
Documentation 	A test suite with a single test for valid login.
...  
...         This test has a workflow that is created using keywords in
...         the imported resource file.
Library           SeleniumLibrary

*** Variables ***
${SERVER}       http://wastewater.entechsi-connect.com/login
${BROWSER}      chrome
${mail}         wastewater@entechsi.com
${password}     wastewater
${Empty}        

*** Test Cases *** 
Open Browser 
    Open Browser     ${SERVER}   ${BROWSER} 
    Maximize Browser window

Login 
    Input text          //*[@name="email"]          ${mail}
    Input text          //*[@name="password"]       ${password}
    Click Element       //*[@type="submit"]
    Sleep   10s
    Capture page Screenshot

scroll1
    Execute JavaScript    window.scrollTo(0, 9999);
    Sleep   10s
    Capture page Screenshot

Meter
    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep   10s
    Click Element       //*[@routerlink="/meter"]
    Sleep   10s
    Capture page Screenshot
    
    scroll element into view        css:#box-content > div > div:nth-child(2) > div > div > mat-card:nth-child(2) > mat-card-content > table > tbody > tr > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted
    Capture page Screenshot

    scroll element into view        css:#box-content > div > div:nth-child(3) > div > div > mat-card > mat-card-content > table > tbody > tr > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted
    Capture page Screenshot    
    
    Close Browser


   
