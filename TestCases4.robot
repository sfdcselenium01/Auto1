*** Settings ***
Documentation     Auto1/QA Task
Suite Teardown    Close All Browsers
Test Teardown     Close Browser
Library           SeleniumLibrary
Library           String
Library           Collections
Library           OperatingSystem

*** Variables ***
${SYSTEM_DEFAULTWORKINGDIRECTORY}

*** Test Cases ***
Selenium Home Page
    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Create Webdriver    driver_name=Chrome    chrome_options=${chrome_options}
    Set Window Size    1920    1080
    Log    ${SYSTEM_DEFAULTWORKINGDIRECTORY}
    Go To    https://www.selenium.dev/
    Sleep    5


