*** Settings ***
Documentation     Auto1/QA Task
Suite Teardown    Close All Browsers
Test Teardown     Close Browser
Library           SeleniumLibrary
Library           String
Library           Collections
Resource          Keywords.robot

*** Variables ***

*** Test Cases ***
Selenium Home Page
    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Create Webdriver    driver_name=Chrome    chrome_options=${chrome_options}
    Set Window Size    1920    1080
    Go To    https://www.selenium.dev/
    Sleep    5

Headless
    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --no-proxy-server
    Create Webdriver    driver_name=Chrome    chrome_options=${chrome_options}
    Set Window Size    1920    1080
    Go To    https://www.selenium.dev/
    Sleep    5
