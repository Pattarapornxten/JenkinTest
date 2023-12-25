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
    Sleep       10s

Overview
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-overview > div > div:nth-child(2) > mat-card:nth-child(1) > mat-card-content > table:nth-child(1) > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-consomsion.mat-column-consomsion.ng-star-inserted > span        ${Empty} 
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-overview > div > div:nth-child(2) > mat-card:nth-child(1) > mat-card-content > table:nth-child(1) > tbody > tr:nth-child(2) > td.mat-cell.cdk-cell.cdk-column-consomsion.mat-column-consomsion.ng-star-inserted > span       ${Empty} 
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-overview > div > div:nth-child(2) > mat-card:nth-child(1) > mat-card-content > table:nth-child(1) > tbody > tr:nth-child(3) > td.mat-cell.cdk-cell.cdk-column-consomsion.mat-column-consomsion.ng-star-inserted > span       ${Empty} 
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-overview > div > div:nth-child(2) > mat-card:nth-child(1) > mat-card-content > table:nth-child(1) > tbody > tr:nth-child(4) > td.mat-cell.cdk-cell.cdk-column-consomsion.mat-column-consomsion.ng-star-inserted > span       ${Empty}
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-overview > div > div:nth-child(2) > mat-card:nth-child(1) > mat-card-content > table:nth-child(1) > tbody > tr:nth-child(5) > td.mat-cell.cdk-cell.cdk-column-consomsion.mat-column-consomsion.ng-star-inserted > span       ${Empty}
    Capture page Screenshot

    Close Browser  
