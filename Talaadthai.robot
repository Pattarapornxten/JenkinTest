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

Overview - 1 Season fruit
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-overview > div > div:nth-child(2) > mat-card:nth-child(1) > mat-card-content > table:nth-child(1) > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-button.mat-column-button.ng-star-inserted > button
    Sleep       3s
    Capture page Screenshot
    Click element       //*[@data-icon="arrow-left"]

Overview - 2 International fruit 
    Sleep       3s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-overview > div > div:nth-child(2) > mat-card:nth-child(1) > mat-card-content > table:nth-child(1) > tbody > tr:nth-child(2) > td.mat-cell.cdk-cell.cdk-column-button.mat-column-button.ng-star-inserted > button
    Sleep       3s
    Capture page Screenshot
    Click element       //*[@data-icon="arrow-left"]

Overview - 3 Container yard 
    Sleep       3s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-overview > div > div:nth-child(2) > mat-card:nth-child(1) > mat-card-content > table:nth-child(1) > tbody > tr:nth-child(3) > td.mat-cell.cdk-cell.cdk-column-button.mat-column-button.ng-star-inserted > button
    Sleep       3s
    Capture page Screenshot
    Click element       //*[@data-icon="arrow-left"]

Overview - 4 Central area N8
    Sleep       3s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-overview > div > div:nth-child(2) > mat-card:nth-child(1) > mat-card-content > table:nth-child(1) > tbody > tr:nth-child(4) > td.mat-cell.cdk-cell.cdk-column-button.mat-column-button.ng-star-inserted > button
    Sleep       3s
    Capture page Screenshot
    Click Element       //*[@data-icon="arrow-left"]
    
Overview - 5 Central area 
    Sleep       3s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-overview > div > div:nth-child(2) > mat-card:nth-child(1) > mat-card-content > table:nth-child(1) > tbody > tr:nth-child(5) > td.mat-cell.cdk-cell.cdk-column-button.mat-column-button.ng-star-inserted > button
    Sleep       3s
    Capture page Screenshot

Meter - Season fruit
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(1) > div:nth-child(1) > button > span.mat-button-wrapper > mat-icon
    Sleep  3s
    Click Element       //*[@href="/meter"]
    Sleep   20s
    Capture page Screenshot
    Click element       //*[@id="mat-select-value-11"]
    Click element       css:#mat-option-12 > span
    scroll element into view        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(2) > div > div
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
    Capture Page Screenshot

Meter Offline - International fruit
    Click Element       //*[@class="select-blue ng-valid ng-dirty ng-touched"]
    Click Element       //*[@value="international fruit"]
    Sleep       3s
    Input Text      //*[@id="mat-input-2"]     Offline
    Sleep       3s
    scroll element into view        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-paginator > div > div > div.mat-paginator-page-size.ng-star-inserted > div    
    Capture Page Screenshot

Meter Offline - Container yard
    Click Element       //*[@class="select-blue ng-valid ng-dirty ng-touched"]
    Click Element       //*[@value="container yard"]
    Sleep       3s
    Input Text      //*[@id="mat-input-2"]     Offline
    Sleep       3s
    scroll element into view        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-paginator > div > div > div.mat-paginator-page-size.ng-star-inserted > div    
    Capture Page Screenshot

Meter Offline - Central area N8
    Click Element       //*[@class="select-blue ng-valid ng-dirty ng-touched"]
    Click Element       //*[@value="central area N8"]
    Sleep       3s
    Input Text      //*[@id="mat-input-2"]     Offline
    Sleep       3s
    scroll element into view        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-paginator > div > div > div.mat-paginator-page-size.ng-star-inserted > div    
    Capture Page Screenshot

Meter Offline - Central area
    Click Element       //*[@class="select-blue ng-valid ng-dirty ng-touched"]
    Click Element       //*[@value="central area"]
    Sleep       3s
    Input Text      //*[@id="mat-input-2"]     Offline
    Sleep       3s
    scroll element into view        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-meter > div > mat-card > mat-paginator > div > div > div.mat-paginator-page-size.ng-star-inserted > div    
    Capture Page Screenshot

    Close Browser

Report
    Open Browser     ${SERVER}   ${BROWSER} 
    Maximize Browser window
    Input text          //*[@name="email"]          ${mail}
    Input text          //*[@name="password"]       ${password}
    Click Element       //*[@type="submit"]
    Sleep   20s
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > mat-toolbar > div:nth-child(1) > div:nth-child(1) > button > span.mat-button-wrapper > mat-icon
    Sleep   5s
    Click Element       //*[@routerlink="/report"]
    Sleep   20s
    Capture Page Screenshot
    
Report - 1 season fruit
    Click element       //*[@aria-label="Items per page:"]
    Click element       css:#mat-option-11 > span
    scroll element into view    //*[@aria-label="Side nav toggle icon"]     
    # ------------ Meter name
    Capture page Screenshot
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c179-17.cdk-column-name.mat-column-name.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Conv ip
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c179-18.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Meter id
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c179-19.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted         ${Empty}
    #Capture page Screenshot
    # ------------ Previous Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c179-20.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be         css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted       ${Empty}
    #Capture page Screenshot
     # ------------ Recent Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c179-21.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Consumption
    Click element      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c179-22.cdk-column-consumption.mat-column-consumption.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-consumption.mat-column-consumption.ng-star-inserted       ${Empty}
    #Capture page Screenshot

Report - 2 International Fruit
    Click Element       //*[@class="select-blue ng-untouched ng-pristine ng-valid"]
    Click Element       //*[@value="international fruit"]
    Sleep  10s
    Capture Page Screenshot
    # ------------ Meter name
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c179-17.cdk-column-name.mat-column-name.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted        ${Empty}
    Capture Page Screenshot
    # ------------ Conv ip
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c179-18.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted        ${Empty}
    Capture Page Screenshot
    # ------------ Meter id
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c179-19.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted         ${Empty}
    Capture Page Screenshot
    # ------------ Previous Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c179-20.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted 
    Sleep   5s
    Element Text Should Not Be         css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted       ${Empty}
    Capture Page Screenshot
     # ------------ Recent Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c179-21.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted        ${Empty}
    Capture Page Screenshot
    # ------------ Consumption
    Click element      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c179-22.cdk-column-consumption.mat-column-consumption.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-consumption.mat-column-consumption.ng-star-inserted       ${Empty}
    #Capture Page Screenshot

Report - 3 Container Yard
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Click Element       //*[@value="container yard"]
    Sleep  10s
    Capture Page Screenshot
    # ------------ Meter name
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c179-17.cdk-column-name.mat-column-name.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Conv ip
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c179-18.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Sensor id
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c179-19.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted         ${Empty}
    #Capture page Screenshot
    # ------------ Previous Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c179-20.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be         css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted       ${Empty}
    #Capture page Screenshot
     # ------------ Recent Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c179-21.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Consumption
    Click element      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c179-22.cdk-column-consumption.mat-column-consumption.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-consumption.mat-column-consumption.ng-star-inserted       ${Empty}
    #Capture page Screenshot

Report - 4 Central area N8
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Click Element       //*[@value="central area N8"]
    Sleep  20s
    Capture Page Screenshot
    # ------------ Meter name
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c179-17.cdk-column-name.mat-column-name.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Conv ip
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c179-18.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Sensor id
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c179-19.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted         ${Empty}
    #Capture page Screenshot
    # ------------ Previous Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c179-20.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be         css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted       ${Empty}
    #Capture page Screenshot
     # ------------ Recent Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c179-21.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Consumption
    Click element      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c179-22.cdk-column-consumption.mat-column-consumption.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-consumption.mat-column-consumption.ng-star-inserted       ${Empty}
    #Capture page Screenshot

Report - 5 Central area
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-header > div > div:nth-child(2) > select
    Click Element       //*[@value="central area"]
    Sleep  10s
    Capture Page Screenshot
    # ------------ Meter name
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c179-17.cdk-column-name.mat-column-name.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-name.mat-column-name.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Conv ip
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c179-18.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-conv_ip.mat-column-conv_ip.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Sensor id
    Click Element       css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c179-19.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-meter_id.mat-column-meter_id.ng-star-inserted         ${Empty}
    #Capture page Screenshot
    # ------------ Previous Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.w-180.ng-tns-c179-20.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be         css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-previous_reading.mat-column-previous_reading.ng-star-inserted       ${Empty}
    #Capture page Screenshot
     # ------------ Recent Reading
    Click Element        css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c179-21.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-recent_reading.mat-column-recent_reading.ng-star-inserted        ${Empty}
    #Capture page Screenshot
    # ------------ Consumption
    Click element      css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > thead > tr > th.mat-sort-header.mat-header-cell.cdk-header-cell.ng-tns-c179-22.cdk-column-consumption.mat-column-consumption.ng-star-inserted
    Sleep   5s
    Element Text Should Not Be          css:body > app-root > app-authen-layout > app-menu > mat-sidenav-container > mat-sidenav-content > main > app-report > div > mat-card > mat-card-content > div > table > tbody > tr:nth-child(1) > td.mat-cell.cdk-cell.cdk-column-consumption.mat-column-consumption.ng-star-inserted       ${Empty}
    #Capture page Screenshot
    Close Browser  
