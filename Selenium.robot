*** Settings ***
Suite Teardown    Close All Browsers
Library           SeleniumLibrary
*** Test Cases ***
Selenium Home Page
    Open Browser    https://www.selenium.dev/    Chrome
    Set Window Size    1920    1080
    Maximize Browser Window
    Sleep    5
    Click Element    //span[contains(text(),'Support')]
    Close Browser
    [Teardown]    Close All Browsers

eBay Home page
    Open Browser    https://www.ebay.com/    Chrome
    Maximize Browser Window
    Click Element    //*[@id="gh-search-btn2"]/span
    Close Browser
