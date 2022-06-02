*** Settings ***
Documentation     Auto1/QA Task
Suite Teardown    Close All Browsers
Test Teardown     Close Browser
Library           SeleniumLibrary
Library           String
Library           Collections
Library           OperatingSystem

*** Variables ***
${SYSTEM_DEFAULTWORKINGDIRECTORY}    ${EMPTY}

*** Test Cases ***
Selenium Home Page
    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Create Webdriver    driver_name=Chrome    chrome_options=${chrome_options}
    Set Window Size    1920    1080
    Log    ${SYSTEM_DEFAULTWORKINGDIRECTORY}
    ${exist?}    Run Keyword And Return Status    Directory Should Exist    ${SYSTEM_DEFAULTWORKINGDIRECTORY}\Screenshot
    Run Keyword If    '${exist?}'!='True'    Create Dictionary    ${SYSTEM_DEFAULTWORKINGDIRECTORY}\Screenshot
    Set Screenshot Directory    ${SYSTEM_DEFAULTWORKINGDIRECTORY}\Screenshot
    Go To    https://www.selenium.dev/
    Maximize Browser Window
    Sleep    3
    Capture Page Screenshot
    Click Element    //span[contains(text(),'Support')]
    Sleep    2
    Capture Page Screenshot
