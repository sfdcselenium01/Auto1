*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Selenium Home Page
    Open Browser    https://www.selenium.dev/    Chrome
    Set Window Size    1920    1080
    Maximize Browser Window
    Sleep    5
    Click Element    //span[contains(text(),'Support')]
    [Teardown]    Close All Browsers
