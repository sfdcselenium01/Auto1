*** Settings ***

*** Keywords ***
Open Browser To URL
    [Arguments]    ${testURL}=${LoginURL}    ${testBrowser}=${BROWSER}    ${localBrowser}=${BROWSERPATH}
    IF    '${localBrowser}'=='${EMPTY}'
    IF    '${testBrowser.upper()}'=='CHROME'
    ${chrome_options} =    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-infobars
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Go To    ${testURL}
    ELSE IF    '${testBrowser.upper()}'=='FIREFOX'
    Open Browser    ${testURL}    browser=firefox
    ELSE IF    '${testBrowser.upper()}'=='IE'
    Use IE Browser    ${testURL}
    ELSE IF    '${testBrowser.upper()}'=='HEADLESS'
    Open Browser    ${testURL}    browser=headlesschrome
    ELSE IF    '${testBrowser.upper()}'=='EDGE'
    Open Browser    ${testURL}    edge
    ELSE IF    '${testBrowser.upper()}'=='PROXY'
    ${chrome_options} =    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-infobars
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --proxy-server\=http://10.50.222.159:${Proxy}
    log to console    --proxy-server\=http://10.50.222.159:${Proxy}
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Go To    ${testURL}
    END
    ELSE
    IF    '${testBrowser.upper()}'=='CHROME'
    ${chrome_options} =    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-infobars
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Create Webdriver    Chrome    chrome_options=${chrome_options}    executable_path=${localBrowser}
    Go To    ${testURL}
    ELSE IF    '${testBrowser.upper()}'=='FIREFOX'
    Open Browser    ${testURL}    browser=firefox    executable_path=${localBrowser}
    ELSE IF    '${testBrowser.upper()}'=='IE'
    Use IE Browser    ${testURL}
    ELSE IF    '${testBrowser.upper()}'=='HEADLESS'
    Open Browser    ${testURL}    browser=headlesschrome    executable_path=${localBrowser}
    ELSE IF    '${testBrowser.upper()}'=='EDGE'
    Open Browser    ${testURL}    edge
    ELSE IF    '${testBrowser.upper()}'=='PROXY'
    ${chrome_options} =    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-infobars
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --proxy-server\=http://10.50.222.159:${Proxy}
    log to console    --proxy-server\=http://10.50.222.159:${Proxy}
    Create Webdriver    Chrome    chrome_options=${chrome_options}    executable_path=${localBrowser}
    Go To    ${testURL}
    END
    END
