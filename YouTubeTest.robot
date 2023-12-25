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
    Sleep   5s
    Input text       //*[@type="text"]          Money Lisa
    Click Element       css:#search-icon-legacy       
    Sleep   2s 
    Capture page Screenshot         pic.png
    Close Browser  
