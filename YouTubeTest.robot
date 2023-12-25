*** Settings ***
Documentation 	A test suite with a single test for valid login.
...  
...         This test has a workflow that is created using keywords in
...         the imported resource file.
Library           SeleniumLibrary

*** Variables ***
${SERVER}       https://www.youtube.com/
${BROWSER}      chrome
${Empty}        

*** Test Cases *** 
Open Browser 
    Open Browser     ${SERVER}   ${BROWSER} 
    Maximize Browser window
    Sleep   10s
    Input Element       //*[@id="search"]         Lisa
    Click Element       //*[@id="search-icon-legacy"]
    Sleep   2s 
    Capture page Screenshot         pic.png
    Close Browser  
