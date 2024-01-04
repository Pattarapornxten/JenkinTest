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
    Sleep       5s

Overview
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-overview > div > div:nth-child(2) > mat-card:nth-child(1) > mat-card-content > table:nth-child(1) > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-consomsion.mat-column-consomsion.ng-star-inserted > span        ${Empty} 
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-overview > div > div:nth-child(2) > mat-card:nth-child(1) > mat-card-content > table:nth-child(1) > tbody > tr:nth-child(2) > td.mat-cell.cdk-cell.cdk-column-consomsion.mat-column-consomsion.ng-star-inserted > span       ${Empty} 
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-overview > div > div:nth-child(2) > mat-card:nth-child(1) > mat-card-content > table:nth-child(1) > tbody > tr:nth-child(3) > td.mat-cell.cdk-cell.cdk-column-consomsion.mat-column-consomsion.ng-star-inserted > span       ${Empty} 
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-overview > div > div:nth-child(2) > mat-card:nth-child(1) > mat-card-content > table:nth-child(1) > tbody > tr:nth-child(4) > td.mat-cell.cdk-cell.cdk-column-consomsion.mat-column-consomsion.ng-star-inserted > span       ${Empty}
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-overview > div > div:nth-child(2) > mat-card:nth-child(1) > mat-card-content > table:nth-child(1) > tbody > tr:nth-child(5) > td.mat-cell.cdk-cell.cdk-column-consomsion.mat-column-consomsion.ng-star-inserted > span       ${Empty}
    Capture page Screenshot

Overview - 1 Season fruit
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-overview > div > div:nth-child(2) > mat-card:nth-child(1) > mat-card-content > table:nth-child(1) > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-button.mat-column-button.ng-star-inserted > button
    Sleep       3s
    #Capture page Screenshot
    Click element       //*[@data-icon="arrow-left"]

Overview - 2 International fruit 
    Sleep       3s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-overview > div > div:nth-child(2) > mat-card:nth-child(1) > mat-card-content > table:nth-child(1) > tbody > tr:nth-child(2) > td.mat-cell.cdk-cell.cdk-column-button.mat-column-button.ng-star-inserted > button
    Sleep       3s
    #Capture page Screenshot
    Click element       //*[@data-icon="arrow-left"]

Overview - 3 Container yard 
    Sleep       3s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-overview > div > div:nth-child(2) > mat-card:nth-child(1) > mat-card-content > table:nth-child(1) > tbody > tr:nth-child(3) > td.mat-cell.cdk-cell.cdk-column-button.mat-column-button.ng-star-inserted > button
    Sleep       3s
    #Capture page Screenshot
    Click element       //*[@data-icon="arrow-left"]

Overview - 4 Central area N8
    Sleep       3s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-overview > div > div:nth-child(2) > mat-card:nth-child(1) > mat-card-content > table:nth-child(1) > tbody > tr:nth-child(4) > td.mat-cell.cdk-cell.cdk-column-button.mat-column-button.ng-star-inserted > button
    Sleep       3s
    #Capture page Screenshot
    Click Element       //*[@data-icon="arrow-left"]
    
Overview - 5 Central area 
    Sleep       3s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-overview > div > div:nth-child(2) > mat-card:nth-child(1) > mat-card-content > table:nth-child(1) > tbody > tr:nth-child(5) > td.mat-cell.cdk-cell.cdk-column-button.mat-column-button.ng-star-inserted > button
    Sleep       3s
    #Capture page Screenshot

    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(2) > div > button:nth-child(2) > span.mat-button-wrapper > mat-icon
    Sleep    3s 
    Click Element       css:#mat-dialog-6 > app-widgets > div > mat-card.mat-card.mat-focus-indicator.select > div > div

Meter - Season fruit
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(1) > div:nth-child(1) > button > span.mat-button-wrapper > mat-icon
    Sleep  3s
    Click Element       //*[@href="/meter"]
    Sleep   10s
    Capture page Screenshot
    # Click element       //*[@id="mat-select-value-11"]
    # Click element       css:#mat-option-12 > span
    # scroll element into view        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(2) > div > div
    Sleep   3s
    #Status
    Click element       //*[@sortactiondescription="Sort by status"]
    Sleep   5s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-status.mat-column-status.ng-star-inserted        ${Empty}
    Capture page Screenshot
    Click element       //*[@sortactiondescription="Sort by data"]
    Sleep   5s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-data.mat-column-data.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    Click element       //*[@sortactiondescription="Sort by time"]
    Sleep   5s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-data.mat-column-data.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    Click element       //*[@sortactiondescription="Sort by meter_id"]
    Sleep   5s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted         ${Empty} 
    #Capture page Screenshot
    Click element       //*[@sortactiondescription="Sort by conv_ip"]
    Sleep   5s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted      ${Empty} 
    #Capture page Screenshot
    Click element       //*[@sortactiondescription="Sort by name"]
    Sleep   5s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    Click element       //*[@sortactiondescription="Sort by zone"]
    Sleep   5s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-zone.mat-column-zone.ng-star-inserted             ${Empty}
    #Capture page Screenshot
    Click element       //*[@sortactiondescription="Sort by location"]
    Sleep   5s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-location.mat-column-location.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    
Dropdown2 - International Fruit
    Click Element       //*[@class="select-blue ng-untouched ng-pristine ng-valid"]
    Click Element       //*[@value="international fruit"]
    Sleep   30s
    Capture Page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by location"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-location.mat-column-location.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by zone"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-zone.mat-column-zone.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by name"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by conv_ip"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by meter_id"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by time"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-time.mat-column-time.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by data"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-data.mat-column-data.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by status"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-status.mat-column-status.ng-star-inserted            ${Empty}
    Capture Page Screenshot

Dropdown3 - container yard
    Click Element       //*[@class="select-blue ng-valid ng-dirty ng-touched"]
    Click Element       //*[@value="container yard"]
    Sleep   30s
    Capture Page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by location"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-location.mat-column-location.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by zone"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-zone.mat-column-zone.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by name"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by conv_ip"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by meter_id"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by time"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-time.mat-column-time.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by data"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-data.mat-column-data.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by status"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-status.mat-column-status.ng-star-inserted            ${Empty}
    Capture Page Screenshot

Dropdown4 - central area N8
    Click Element       //*[@class="select-blue ng-valid ng-dirty ng-touched"]
    Click Element       //*[@value="central area N8"]
    Sleep   30s
    Capture Page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by location"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-location.mat-column-location.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by zone"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-zone.mat-column-zone.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by name"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by conv_ip"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by meter_id"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by time"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-time.mat-column-time.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by data"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-data.mat-column-data.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by status"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-status.mat-column-status.ng-star-inserted            ${Empty}
    Capture Page Screenshot

Dropdown5 - central area
    Click Element       //*[@class="select-blue ng-valid ng-dirty ng-touched"]
    Click Element       //*[@value="central area"]
    Sleep   30s
    Capture Page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by location"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-location.mat-column-location.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by zone"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-zone.mat-column-zone.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by name"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by conv_ip"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by meter_id"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by time"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-time.mat-column-time.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by data"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-data.mat-column-data.ng-star-inserted            ${Empty}
    #Capture page Screenshot
    # filter
    Click element      //*[@sortactiondescription="Sort by status"]
    sleep  3s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-status.mat-column-status.ng-star-inserted            ${Empty}
    Capture Page Screenshot

Meter Offline - Season fruit
    Click Element       //*[@class="select-blue ng-valid ng-dirty ng-touched"]
    Click Element       //*[@value="season fruit"]
    Sleep       3s
    Input Text      //*[@id="mat-input-2"]     Offline
    Sleep       3s
    scroll element into view        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-paginator > div > div > div.mat-paginator-page-size.ng-star-inserted > div    
    Capture Page Screenshot         00_Meter Offline - Season fruit.png

Meter Offline - International fruit
    Click Element       //*[@class="select-blue ng-valid ng-dirty ng-touched"]
    Click Element       //*[@value="international fruit"]
    Sleep       3s
    Input Text      //*[@id="mat-input-2"]     Offline
    Sleep       3s
    scroll element into view        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-paginator > div > div > div.mat-paginator-page-size.ng-star-inserted > div    
    Capture Page Screenshot         00_Meter Offline - International fruit.png

Meter Offline - Container yard
    Click Element       //*[@class="select-blue ng-valid ng-dirty ng-touched"]
    Click Element       //*[@value="container yard"]
    Sleep       3s
    Input Text      //*[@id="mat-input-2"]     Offline
    Sleep       3s
    scroll element into view        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-paginator > div > div > div.mat-paginator-page-size.ng-star-inserted > div    
    Capture Page Screenshot         00_Meter Offline - Container yard.png

Meter Offline - Central area N8
    Click Element       //*[@class="select-blue ng-valid ng-dirty ng-touched"]
    Click Element       //*[@value="central area N8"]
    Sleep       3s
    Input Text      //*[@id="mat-input-2"]     Offline
    Sleep       3s
    scroll element into view        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-paginator > div > div > div.mat-paginator-page-size.ng-star-inserted > div    
    Capture Page Screenshot         00_Meter Offline - Central area N8.png

Meter Offline - Central area
    Click Element       //*[@class="select-blue ng-valid ng-dirty ng-touched"]
    Click Element       //*[@value="central area"]
    Sleep       3s
    Input Text      //*[@id="mat-input-2"]     Offline
    Sleep       3s
    scroll element into view        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-paginator > div > div > div.mat-paginator-page-size.ng-star-inserted > div    
    Capture Page Screenshot         00_Meter Offline - Central area.png

    Close Browser

Report Energy
    Open Browser     ${SERVER}   ${BROWSER} 
    Maximize Browser window
    Input text          //*[@name="email"]          ${mail}
    Input text          //*[@name="password"]       ${password}
    Click Element       //*[@type="submit"]
    Sleep       10s
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(2) > div > button:nth-child(2) > span.mat-button-wrapper > mat-icon
    Sleep       2s
    Click Element       //*[@data-icon="bolt"]
    Sleep       2s 

    # Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(2) > div > button:nth-child(2) > span.mat-button-wrapper > mat-icon
    # Sleep    3s 
    # Click Element       css:#mat-dialog-6 > app-widgets > div > mat-card.mat-card.mat-focus-indicator.select > div

    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(1) > div:nth-child(1) > button > span.mat-button-wrapper > mat-icon
    Sleep   5s
    Click Element       //*[@routerlink="/report"]
    Sleep   20s
    Capture Page Screenshot
    
Report - 1 season fruit
    # Click element       //*[@aria-label="Items per page:"]
    # Click element       css:#mat-option-11 > span
    # scroll element into view    //*[@aria-label="Side nav toggle icon"]    
    # ------------ Meter name
    Capture page Screenshot
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-20.cdk-column-name.mat-column-name.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Conv ip
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-21.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Meter id
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-22.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted         ${Empty}
    #Capture page Screenshot
    # ------------ Previous Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-23.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be         css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted       ${Empty}
    #Capture page Screenshot
     # ------------ Recent Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-24.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Consumption
    Click element      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-25.cdk-column-consumption.mat-column-consumption.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-consumption.mat-column-consumption.ng-star-inserted       ${Empty}
    #Capture page Screenshot

Report - 2 International Fruit
    Click Element       //*[@class="select-blue ng-untouched ng-pristine ng-valid"]
    Click Element       //*[@value="international fruit"]
    Sleep  10s
    # ------------ Meter name
    Capture page Screenshot
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-20.cdk-column-name.mat-column-name.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Conv ip
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-21.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Meter id
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-22.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted         ${Empty}
    #Capture page Screenshot
    # ------------ Previous Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-23.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be         css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted       ${Empty}
    #Capture page Screenshot
     # ------------ Recent Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-24.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Consumption
    Click element      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-25.cdk-column-consumption.mat-column-consumption.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-consumption.mat-column-consumption.ng-star-inserted       ${Empty}
    #Capture page Screenshot

Report - 3 Container Yard
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Click Element       //*[@value="container yard"]
    Sleep  10s
    # ------------ Meter name
    Capture page Screenshot
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-20.cdk-column-name.mat-column-name.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Conv ip
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-21.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Meter id
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-22.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted         ${Empty}
    #Capture page Screenshot
    # ------------ Previous Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-23.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be         css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted       ${Empty}
    #Capture page Screenshot
     # ------------ Recent Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-24.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Consumption
    Click element      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-25.cdk-column-consumption.mat-column-consumption.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-consumption.mat-column-consumption.ng-star-inserted       ${Empty}
    #Capture page Screenshot

Report - 4 Central area N8
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Click Element       //*[@value="central area N8"]
    Sleep  20s
    # ------------ Meter name
    Capture page Screenshot
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-20.cdk-column-name.mat-column-name.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Conv ip
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-21.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Meter id
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-22.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted         ${Empty}
    #Capture page Screenshot
    # ------------ Previous Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-23.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be         css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted       ${Empty}
    #Capture page Screenshot
     # ------------ Recent Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-24.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Consumption
    Click element      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-25.cdk-column-consumption.mat-column-consumption.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-consumption.mat-column-consumption.ng-star-inserted       ${Empty}
    #Capture page Screenshot

Report - 5 Central area
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Click Element       //*[@value="central area"]
    Sleep  10s
    Capture Page Screenshot
    # ------------ Meter name
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-20.cdk-column-name.mat-column-name.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Conv ip
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-21.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Meter id
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-22.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted         ${Empty}
    #Capture page Screenshot
    # ------------ Previous Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-23.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be         css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted       ${Empty}
    #Capture page Screenshot
     # ------------ Recent Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-24.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Consumption
    Click element      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-25.cdk-column-consumption.mat-column-consumption.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-consumption.mat-column-consumption.ng-star-inserted       ${Empty}
    #Capture page Screenshot

Report - 6 talaadthai
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Click Element       //*[@value="talaadthai"]
    Sleep  10s
    Capture Page Screenshot
    # ------------ Meter name

    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-20.cdk-column-name.mat-column-name.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Conv ip
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-21.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Meter id
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-22.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted         ${Empty}
    #Capture page Screenshot
    # ------------ Previous Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-23.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be         css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted       ${Empty}
    #Capture page Screenshot
     # ------------ Recent Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-24.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Consumption
    Click element      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-25.cdk-column-consumption.mat-column-consumption.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-consumption.mat-column-consumption.ng-star-inserted       ${Empty}
    #Capture page Screenshot
    Close Browser  

    # _________________________ _________________________ _________________________ _________________________ _________________________  


Water Meter
    Open Browser     ${SERVER}   ${BROWSER} 
    Maximize Browser window
    Input text          //*[@name="email"]          ${mail}
    Input text          //*[@name="password"]       ${password}
    Click Element       //*[@type="submit"]
    Sleep       10s
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(2) > div > button:nth-child(2) > span.mat-button-wrapper > mat-icon
    Click Element       css:#mat-dialog-1 > app-widgets > div > mat-card:nth-child(2)
    Sleep       5s
# _____________   Menu Water System 
Water System 
    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep       5s
    Capture page Screenshot
    Click Element       //*[@href="/water-system"]
    Sleep   5s 
    Capture page Screenshot

# หอจ่ายน้ำ ฝั่งเหนือ day
    scroll element into view       //*[@id="mat-button-toggle-15-button"] 
    Sleep   5s
    Capture page Screenshot

# หอจ่ายน้ำ ฝั่งเหนือ week
    Click Element       //*[@id="mat-button-toggle-7-button"]
    Click Element       //*[@id="mat-button-toggle-10"]
    Sleep   5s
    Capture page Screenshot

# หอจ่ายน้ำ ฝั่งเหนือ month
    Click Element       //*[@id="mat-button-toggle-8-button"]
    Click Element       //*[@id="mat-button-toggle-11-button"]
    Sleep   5s
    Capture page Screenshot 

# หอจ่ายน้ำ ฝั่งใต้ day
    scroll element into view        //*[@id="mat-button-toggle-18-button"]
    Sleep   5s
    Capture page Screenshot

# หอจ่ายน้ำ ฝั่งใต้ week
    Click Element       //*[@id="mat-button-toggle-13-button"]
    Click Element       //*[@id="mat-button-toggle-16-button"]
    Sleep   5s
    Capture page Screenshot

# หอจ่ายน้ำ ฝั่งใต้ month
    Click Element       //*[@id="mat-button-toggle-14-button"]
    Click Element       //*[@id="mat-button-toggle-17-button"]
    Sleep   5s
    Capture page Screenshot

# ตะวันออก
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight);
    Sleep   5s
    Capture page Screenshot

# หอจ่ายน้ำ ฝั่งใต้ week
    Click Element       //*[@id="mat-button-toggle-19-button"]
    Click Element       //*[@id="mat-button-toggle-22-button"]
    Sleep   5s
    Capture page Screenshot

# หอจ่ายน้ำ ฝั่งใต้ month
    Click Element       //*[@id="mat-button-toggle-20-button"]
    Click Element       //*[@id="mat-button-toggle-23-button"]
    Sleep   5s
    Capture page Screenshot


Water meter Season Fruit
    scroll element into view            //*[@aria-label="Side nav toggle icon"]
    Sleep  2s
    Click Element    //*[@aria-label="Side nav toggle icon"]
    Sleep  2s
    Click Element      //*[@routerlink="/meter"] 

    Sleep    5s
    Capture page Screenshot
    Element Text Should be         css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr > td          No data matching the filter  
    # Location 
    # Zone
    # Meter Name
    # Converter IP
    # Meter ID
    # Date time
    # Data
    # Status

Water meter Central area
    Click Element       //*[@class="select-blue ng-untouched ng-pristine ng-valid"] 
    sleep   2s
    Click Element       //*[@value="central area"]
    # Location  
    Click Element       //*[@sortactiondescription="Sort by location"] 
    Sleep  2s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-location.mat-column-location.ng-star-inserted        ${Empty}
    # Zone
    Click Element       //*[@sortactiondescription="Sort by zone"] 
    Sleep  2s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-zone.mat-column-zone.ng-star-inserted           ${Empty}
    # Meter Name
    Click Element       //*[@sortactiondescription="Sort by name"] 
    Sleep  2s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted           ${Empty}
    # Converter IP
    Click Element       //*[@sortactiondescription="Sort by conv_ip"] 
    Sleep  2s
    Element Text Should Not be    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted            ${Empty}
    # Meter ID
    Click Element       //*[@sortactiondescription="Sort by meter_id"] 
    Sleep  2s
    Element Text Should Not be        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted          ${Empty}  
    # Date time
    # Click Element       //*[@sortactiondescription="Sort by data"] 
    # Sleep  2s
    # Element Text Should Not be 
    # Data
    Click Element       //*[@sortactiondescription="Sort by data"] 
    Sleep  2s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-data.mat-column-data.ng-star-inserted             ${Empty}  
    # Status
    Click Element       //*[@sortactiondescription="Sort by status"] 
    Sleep  2s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-status.mat-column-status.ng-star-inserted            ${Empty}

Water offline Central area
    Input Text      //*[@placeholder="Search"]          offline 
    Sleep  2s
    Capture page Screenshot         00_Water offline Central area.png 
    Input Text      //*[@placeholder="Search"]          ${Empty} 

Water meter central area N8
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    sleep   2s
    Click Element       //*[@value="central area N8"]
    # Location  
    Click Element       //*[@sortactiondescription="Sort by location"] 
    Sleep  2s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-location.mat-column-location.ng-star-inserted        ${Empty}
    # Zone
    Click Element       //*[@sortactiondescription="Sort by zone"] 
    Sleep  2s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-zone.mat-column-zone.ng-star-inserted           ${Empty}
    # Meter Name
    Click Element       //*[@sortactiondescription="Sort by name"] 
    Sleep  2s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted           ${Empty}
    # Converter IP
    Click Element       //*[@sortactiondescription="Sort by conv_ip"] 
    Sleep  2s
    Element Text Should Not be    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted            ${Empty}
    # Meter ID
    Click Element       //*[@sortactiondescription="Sort by meter_id"] 
    Sleep  2s
    Element Text Should Not be        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted          ${Empty}  
    # Date time
    # Click Element       //*[@sortactiondescription="Sort by data"] 
    # Sleep  2s
    # Element Text Should Not be 
    # Data
    Click Element       //*[@sortactiondescription="Sort by data"] 
    Sleep  2s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-data.mat-column-data.ng-star-inserted             ${Empty}  
    # Status
    Click Element       //*[@sortactiondescription="Sort by status"] 
    Sleep  2s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-status.mat-column-status.ng-star-inserted            ${Empty}

Water offline central area N8    
    Input Text      //*[@placeholder="Search"]          offline 
    Sleep  2s
    Capture page Screenshot          00_Water offline central area N8.png
    Input Text      //*[@placeholder="Search"]          ${Empty} 

Water meter container yard
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    sleep   2s
    Click Element       //*[@value="container yard"]
    # Location  
    Click Element       //*[@sortactiondescription="Sort by location"] 
    Sleep  2s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-location.mat-column-location.ng-star-inserted        ${Empty}
    # Zone
    Click Element       //*[@sortactiondescription="Sort by zone"] 
    Sleep  2s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-zone.mat-column-zone.ng-star-inserted           ${Empty}
    # Meter Name
    Click Element       //*[@sortactiondescription="Sort by name"] 
    Sleep  2s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted           ${Empty}
    # Converter IP
    Click Element       //*[@sortactiondescription="Sort by conv_ip"] 
    Sleep  2s
    Element Text Should Not be    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted            ${Empty}
    # Meter ID
    Click Element       //*[@sortactiondescription="Sort by meter_id"] 
    Sleep  2s
    Element Text Should Not be        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted          ${Empty}  
    # Date time
    # Click Element       //*[@sortactiondescription="Sort by data"] 
    # Sleep  2s
    # Element Text Should Not be 
    # Data
    Click Element       //*[@sortactiondescription="Sort by data"] 
    Sleep  2s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-data.mat-column-data.ng-star-inserted             ${Empty}  
    # Status
    Click Element       //*[@sortactiondescription="Sort by status"] 
    Sleep  2s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-status.mat-column-status.ng-star-inserted            ${Empty}

Water offline container yard
    Input Text      //*[@placeholder="Search"]          offline 
    Sleep  2s
    Capture page Screenshot         00_Water offline container yard.png
    Input Text      //*[@placeholder="Search"]          ${Empty} 

Water meter international fruit
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    sleep   2s
    Click Element       //*[@value="international fruit"]
    # Location  
    Click Element       //*[@sortactiondescription="Sort by location"] 
    Sleep  2s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-location.mat-column-location.ng-star-inserted        ${Empty}
    # Zone
    Click Element       //*[@sortactiondescription="Sort by zone"] 
    Sleep  2s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-zone.mat-column-zone.ng-star-inserted           ${Empty}
    # Meter Name
    Click Element       //*[@sortactiondescription="Sort by name"] 
    Sleep  2s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted           ${Empty}
    # Converter IP
    Click Element       //*[@sortactiondescription="Sort by conv_ip"] 
    Sleep  2s
    Element Text Should Not be    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted            ${Empty}
    # Meter ID
    Click Element       //*[@sortactiondescription="Sort by meter_id"] 
    Sleep  2s
    Element Text Should Not be        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted          ${Empty}  
    # Date time
    # Click Element       //*[@sortactiondescription="Sort by data"] 
    # Sleep  2s
    # Element Text Should Not be 
    # Data
    Click Element       //*[@sortactiondescription="Sort by data"] 
    Sleep  2s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-data.mat-column-data.ng-star-inserted             ${Empty}  
    # Status
    Click Element       //*[@sortactiondescription="Sort by status"] 
    Sleep  2s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-status.mat-column-status.ng-star-inserted            ${Empty}

Water offline international fruit
    Input Text      //*[@placeholder="Search"]          offline 
    Sleep  2s
    Capture page Screenshot         00_Water offline international fruit.png
    Input Text      //*[@placeholder="Search"]          ${Empty} 

Water meter talaadthai
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    sleep   2s
    Click Element       //*[@value="talaadthai"]
    # Location  
    Click Element       //*[@sortactiondescription="Sort by location"] 
    Sleep  2s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-location.mat-column-location.ng-star-inserted        ${Empty}
    # Zone
    Click Element       //*[@sortactiondescription="Sort by zone"] 
    Sleep  2s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-zone.mat-column-zone.ng-star-inserted           ${Empty}
    # Meter Name
    Click Element       //*[@sortactiondescription="Sort by name"] 
    Sleep  2s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted           ${Empty}
    # Converter IP
    Click Element       //*[@sortactiondescription="Sort by conv_ip"] 
    Sleep  2s
    Element Text Should Not be    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted            ${Empty}
    # Meter ID
    Click Element       //*[@sortactiondescription="Sort by meter_id"] 
    Sleep  2s
    Element Text Should Not be        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted          ${Empty}  
    # Date time
    # Click Element       //*[@sortactiondescription="Sort by data"] 
    # Sleep  2s
    # Element Text Should Not be 
    # Data
    Click Element       //*[@sortactiondescription="Sort by data"] 
    Sleep  2s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-data.mat-column-data.ng-star-inserted             ${Empty}  
    # Status
    Click Element       //*[@sortactiondescription="Sort by status"] 
    Sleep  2s
    Element Text Should Not be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-status.mat-column-status.ng-star-inserted            ${Empty}

Water offline talaadthai
    Input Text      //*[@placeholder="Search"]          offline 
    Sleep  2s
    Capture page Screenshot         00_Water offline talaadthai.png
    Input Text      //*[@placeholder="Search"]          ${Empty} 
#_________________   _________________   _________________   _________________   _________________   _________________   _________________   _________________   _________________   _________________

Water Report Season Fruit
    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep   2s
    Click Element       //*[@routerlink="/report"]
    Sleep   2s

    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Click Element       //*[@value="season fruit"]
    Sleep   3s
    Element Text Should be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr > td             No data matching the filter  
    # Meter Name 
    # Converter IP
    # Meter ID
    # Previous Reading
    # Recent Reading
    # Consumption  

Water Report Central area
    Sleep    3s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Click Element       //*[@value="central area"]
    Sleep   3s
    #Element Text Should be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr > td             No data matching the filter  
    # Meter Name 
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-40.cdk-column-name.mat-column-name.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted          ${Empty}
    
    # Converter IP
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-41.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted          ${Empty}
    # Meter ID
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-42.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted          ${Empty}
    # Previous Reading
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-43.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted          ${Empty}
    # Recent Reading
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-44.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted          ${Empty}
    # Consumption 
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-45.cdk-column-consumption.mat-column-consumption.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-consumption.mat-column-consumption.ng-star-inserted          ${Empty}

Water Report Central area N8
    Sleep    3s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Click Element       //*[@value="central area N8"]
    Sleep   3s
    # Meter Name 
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-40.cdk-column-name.mat-column-name.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted          ${Empty}
    
    # Converter IP
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-41.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted          ${Empty}
    # Meter ID
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-42.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted          ${Empty}
    # Previous Reading
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-43.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted          ${Empty}
    # Recent Reading
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-44.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted          ${Empty}
    # Consumption 
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-45.cdk-column-consumption.mat-column-consumption.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-consumption.mat-column-consumption.ng-star-inserted          ${Empty}


Water Report Container yard
    Sleep    3s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Click Element       //*[@value="container yard"]
    Sleep   3s
    # Meter Name 
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-40.cdk-column-name.mat-column-name.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted          ${Empty}
    
    # Converter IP
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-41.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted          ${Empty}
    # Meter ID
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-42.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted          ${Empty}
    # Previous Reading
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-43.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted          ${Empty}
    # Recent Reading
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-44.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted          ${Empty}
    # Consumption 
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-45.cdk-column-consumption.mat-column-consumption.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-consumption.mat-column-consumption.ng-star-inserted          ${Empty}

Water Report International fruit
    Sleep    3s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Click Element       //*[@value="international fruit"]
    Sleep   3s
    # Meter Name 
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-40.cdk-column-name.mat-column-name.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted          ${Empty}
    
    # Converter IP
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-41.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted          ${Empty}
    # Meter ID
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-42.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted          ${Empty}
    # Previous Reading
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-43.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted          ${Empty}
    # Recent Reading
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-44.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted          ${Empty}
    # Consumption 
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-45.cdk-column-consumption.mat-column-consumption.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-consumption.mat-column-consumption.ng-star-inserted          ${Empty}

Water Report talaadthai
    Sleep    3s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Click Element       //*[@value="talaadthai"]
    Sleep   3s
    # Meter Name 
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-40.cdk-column-name.mat-column-name.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted          ${Empty}
    # Converter IP
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-41.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted          ${Empty}
    # Meter ID
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-42.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted          ${Empty}
    # Previous Reading
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c181-43.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted          ${Empty}
    # Recent Reading
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-44.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted          ${Empty}
    # Consumption 
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c181-45.cdk-column-consumption.mat-column-consumption.ng-star-inserted
    Sleep   3s
    Element Text Should Not be      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-consumption.mat-column-consumption.ng-star-inserted          ${Empty}

    Close Browser
#_________________   _________________   _________________   _________________   _________________   _________________   _________________   _________________   _________________   _________________

Tank Meter
    Open Browser     ${SERVER}   ${BROWSER} 
    Maximize Browser window
    Input text          //*[@name="email"]          ${mail}
    Input text          //*[@name="password"]       ${password}
    Click Element       //*[@type="submit"]
    Sleep       10s
    
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(2) > div > button:nth-child(2) > span.mat-button-wrapper > mat-icon
    Click Element       //*[@data-icon="glass-water-droplet"]

    Click Element       //*[@aria-label="Side nav toggle icon"]
    Sleep       2s
    Capture page Screenshot
    Click Element       //*[@routerlink="/meter"]

    #_________________   _________________   _________________  

Tank Meter Central area 
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep   2s 
    Click Element       //*[@value="central area"]
    Sleep   2s 
    # Location
    Click Element           //*[@sortactiondescription="Sort by location"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-location.mat-column-location.ng-star-inserted            ${Empty}
    # Meter Name
    Click Element           //*[@sortactiondescription="Sort by name"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted            ${Empty}
    # Converter IP
    Click Element           //*[@sortactiondescription="Sort by conv_ip"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted            ${Empty}
    # Meter ID
    Click Element           //*[@sortactiondescription="Sort by meter_id"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted            ${Empty}
    # Date Time
    Click Element           //*[@sortactiondescription="Sort by time"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-time.mat-column-time.ng-star-inserted            ${Empty}
    # Water Consumption
    Click Element           //*[@sortactiondescription="Sort by recent_total"]
    Sleep  2s 
    Element Text Should Not be             css:tr > td.mat-cell.cdk-cell.cdk-column-recent_total.mat-column-recent_total.ng-star-inserted            ${Empty}
    # Flow Rate
    Click Element           //*[@sortactiondescription="Sort by recent_flow_rate"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_flow_rate.mat-column-recent_flow_rate.ng-star-inserted            ${Empty}
    # Status
    Click Element           //*[@sortactiondescription="Sort by status"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-status.mat-column-status.ng-star-inserted            ${Empty}

Tank Meter Offline Central area
    Input Text      //*[@data-placeholder="Search"]         offline
    Sleep   2s 
    Capture page Screenshot     00_Tank Meter Central area.png
    Input Text      //*[@data-placeholder="Search"]         ${Empty}
    
Tank Meter Central area N8
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep   2s 
    Click Element       //*[@value="central area N8"]
    Sleep   2s 
    # Location
    Click Element           //*[@sortactiondescription="Sort by location"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-location.mat-column-location.ng-star-inserted            ${Empty}
    # Meter Name
    Click Element           //*[@sortactiondescription="Sort by name"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted            ${Empty}
    # Converter IP
    Click Element           //*[@sortactiondescription="Sort by conv_ip"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted            ${Empty}
    # Meter ID
    Click Element           //*[@sortactiondescription="Sort by meter_id"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted            ${Empty}
    # Date Time
    Click Element           //*[@sortactiondescription="Sort by time"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-time.mat-column-time.ng-star-inserted            ${Empty}
    # Water Consumption
    Click Element           //*[@sortactiondescription="Sort by recent_total"]
    Sleep  2s 
    Element Text Should Not be             css:tr > td.mat-cell.cdk-cell.cdk-column-recent_total.mat-column-recent_total.ng-star-inserted            ${Empty}
    # Flow Rate
    Click Element           //*[@sortactiondescription="Sort by recent_flow_rate"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_flow_rate.mat-column-recent_flow_rate.ng-star-inserted            ${Empty}
    # Status
    Click Element           //*[@sortactiondescription="Sort by status"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-status.mat-column-status.ng-star-inserted            ${Empty}

Tank Meter offline Central area N8
    Input Text      //*[@data-placeholder="Search"]         offline
    Sleep   2s 
    Capture page Screenshot     00_Tank Meter Central area N8.png
    Input Text      //*[@data-placeholder="Search"]         ${Empty}

Tank Meter Container yard
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep   2s 
    Click Element       //*[@value="container yard"]
    Sleep   2s 
    # Location
    Click Element           //*[@sortactiondescription="Sort by location"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-location.mat-column-location.ng-star-inserted            ${Empty}
    # Meter Name
    Click Element           //*[@sortactiondescription="Sort by name"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted            ${Empty}
    # Converter IP
    Click Element           //*[@sortactiondescription="Sort by conv_ip"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted            ${Empty}
    # Meter ID
    Click Element           //*[@sortactiondescription="Sort by meter_id"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted            ${Empty}
    # Date Time
    Click Element           //*[@sortactiondescription="Sort by time"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-time.mat-column-time.ng-star-inserted            ${Empty}
    # Water Consumption
    Click Element           //*[@sortactiondescription="Sort by recent_total"]
    Sleep  2s 
    Element Text Should Not be             css:tr > td.mat-cell.cdk-cell.cdk-column-recent_total.mat-column-recent_total.ng-star-inserted            ${Empty}
    # Flow Rate
    Click Element           //*[@sortactiondescription="Sort by recent_flow_rate"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_flow_rate.mat-column-recent_flow_rate.ng-star-inserted            ${Empty}
    # Status
    Click Element           //*[@sortactiondescription="Sort by status"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-status.mat-column-status.ng-star-inserted            ${Empty}

Tank Meter Offline Container yard
    Input Text      //*[@data-placeholder="Search"]         offline
    Sleep   2s 
    Capture page Screenshot     00_Tank Meter Container yard.png
    Input Text      //*[@data-placeholder="Search"]         ${Empty}

Tank Meter International fruit
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep   2s 
    Click Element       //*[@value="international fruit"]
    Sleep   2s 
    # Location
    Click Element           //*[@sortactiondescription="Sort by location"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-location.mat-column-location.ng-star-inserted            ${Empty}
    # Meter Name
    Click Element           //*[@sortactiondescription="Sort by name"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted            ${Empty}
    # Converter IP
    Click Element           //*[@sortactiondescription="Sort by conv_ip"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted            ${Empty}
    # Meter ID
    Click Element           //*[@sortactiondescription="Sort by meter_id"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted            ${Empty}
    # Date Time
    Click Element           //*[@sortactiondescription="Sort by time"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-time.mat-column-time.ng-star-inserted            ${Empty}
    # Water Consumption
    Click Element           //*[@sortactiondescription="Sort by recent_total"]
    Sleep  2s 
    Element Text Should Not be             css:tr > td.mat-cell.cdk-cell.cdk-column-recent_total.mat-column-recent_total.ng-star-inserted            ${Empty}
    # Flow Rate
    Click Element           //*[@sortactiondescription="Sort by recent_flow_rate"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_flow_rate.mat-column-recent_flow_rate.ng-star-inserted            ${Empty}
    # Status
    Click Element           //*[@sortactiondescription="Sort by status"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-status.mat-column-status.ng-star-inserted            ${Empty}

Tank Meter Offline International fruit
    Input Text      //*[@data-placeholder="Search"]         offline
    Sleep   2s 
    Capture page Screenshot     00_Tank Meter International fruit.png
    Input Text      //*[@data-placeholder="Search"]         ${Empty}

Tank Meter season fruit
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep   2s 
    Click Element       //*[@value="season fruit"]
    Sleep   2s 
    # Location
    Click Element           //*[@sortactiondescription="Sort by location"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-location.mat-column-location.ng-star-inserted            ${Empty}
    # Meter Name
    Click Element           //*[@sortactiondescription="Sort by name"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted            ${Empty}
    # Converter IP
    Click Element           //*[@sortactiondescription="Sort by conv_ip"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted            ${Empty}
    # Meter ID
    Click Element           //*[@sortactiondescription="Sort by meter_id"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted            ${Empty}
    # Date Time
    Click Element           //*[@sortactiondescription="Sort by time"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-time.mat-column-time.ng-star-inserted            ${Empty}
    # Water Consumption
    Click Element           //*[@sortactiondescription="Sort by recent_total"]
    Sleep  2s 
    Element Text Should Not be             css:tr > td.mat-cell.cdk-cell.cdk-column-recent_total.mat-column-recent_total.ng-star-inserted            ${Empty}
    # Flow Rate
    Click Element           //*[@sortactiondescription="Sort by recent_flow_rate"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_flow_rate.mat-column-recent_flow_rate.ng-star-inserted            ${Empty}
    # Status
    Click Element           //*[@sortactiondescription="Sort by status"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-status.mat-column-status.ng-star-inserted            ${Empty}

Tank Meter Offline Season fruit
    Input Text      //*[@data-placeholder="Search"]         offline
    Sleep   2s 
    Capture page Screenshot     00_Tank Meter Season fruit.png
    Input Text      //*[@data-placeholder="Search"]         ${Empty}

Tank Meter talaadthai
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep   2s 
    Click Element       //*[@value="talaadthai"]
    Sleep   2s 
    # Location
    Click Element           //*[@sortactiondescription="Sort by location"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-location.mat-column-location.ng-star-inserted            ${Empty}
    # Meter Name
    Click Element           //*[@sortactiondescription="Sort by name"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted            ${Empty}
    # Converter IP
    Click Element           //*[@sortactiondescription="Sort by conv_ip"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted            ${Empty}
    # Meter ID
    Click Element           //*[@sortactiondescription="Sort by meter_id"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted            ${Empty}
    # Date Time
    Click Element           //*[@sortactiondescription="Sort by time"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-time.mat-column-time.ng-star-inserted            ${Empty}
    # Water Consumption
    Click Element           //*[@sortactiondescription="Sort by recent_total"]
    Sleep  2s 
    Element Text Should Not be             css:tr > td.mat-cell.cdk-cell.cdk-column-recent_total.mat-column-recent_total.ng-star-inserted            ${Empty}
    # Flow Rate
    Click Element           //*[@sortactiondescription="Sort by recent_flow_rate"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_flow_rate.mat-column-recent_flow_rate.ng-star-inserted            ${Empty}
    # Status
    Click Element           //*[@sortactiondescription="Sort by status"]
    Sleep  2s 
    Element Text Should Not be             css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-card-content > div:nth-child(2) > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-status.mat-column-status.ng-star-inserted            ${Empty}

Tank Meter Offline talaadthai
    Input Text      //*[@data-placeholder="Search"]         offline
    Sleep   2s 
    Capture page Screenshot     00_Tank Meter talaadthai.png
    Input Text      //*[@data-placeholder="Search"]         ${Empty}

#_________________   _________________   _________________   _________________   _________________   _________________   _________________   _________________   _________________   _________________

Tank Report
    Sleep   3s
    Click Element           //*[@aria-label="Side nav toggle icon"]
    Sleep  2s
    Click Element           //*[@routerlink="/report"]

# central area
    Click Element    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep    3s
    Click Element       //*[@value="central area"]
    Sleep    2s 
    Element Text Should be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr > td           No data matching the filter    

# central area N8
    Click Element    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep    3s
    Click Element       //*[@value="central area N8"]
    Sleep    2s 
    Element Text Should be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr > td           No data matching the filter  

# container yard
    Click Element    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep    3s
    Click Element       //*[@value="container yard"]
    Sleep    2s 
    Element Text Should be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr > td           No data matching the filter  

# international fruit
    Click Element    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep    3s
    Click Element       //*[@value="international fruit"]
    Sleep    2s 
    Element Text Should be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr > td           No data matching the filter  

# season fruit
    Click Element    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep    3s
    Click Element       //*[@value="season fruit"]
    Sleep    2s 
    Element Text Should be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr > td           No data matching the filter  

# talaadthai
    Click Element    css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Sleep    3s
    Click Element       //*[@value="talaadthai"]
    Sleep    2s 
    # Element Text Should be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr > td           No data matching the filter  
    Capture page Screenshot
    Close Browser  
