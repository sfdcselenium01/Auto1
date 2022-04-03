*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Selenium Home Page
    Open Browser    https://www.selenium.dev/    Chrome
    Maximize Browser Window
    Sleep    5
    Click Element    //span[contains(text(),'Ssupport')]
    [Teardown]    Close All Browsers
