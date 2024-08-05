*** Settings ***
Documentation     Auto1/QA Task
Suite Teardown    Close All Browsers
Test Teardown     Close Browser
Library           SeleniumLibrary
Library           String
Library           Collections
Library           OperatingSystem

*** Variables ***
${SYSTEM_DEFAULTWORKINGDIRECTORY}    C:\\Temp
${BUILD_SOURCESDIRECTORY}    ${EMPTY}

*** Test Cases ***
Selenium Home Page
    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Create Webdriver    driver_name=Chrome    options=${chrome_options}
    Go To    https://www.selenium.dev/
    Maximize Browser Window
    Sleep    3
    Capture Page Screenshot
    Click Element    //span[contains(text(),'Support')]
    Sleep    2
    Capture Page Screenshot
