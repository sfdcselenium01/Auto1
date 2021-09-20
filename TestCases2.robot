*** Settings ***
Documentation     Auto1/QA Task
Suite Teardown    Close Browser
Library           SeleniumLibrary
Library           String
Library           Collections
Resource          Keywords.robot

*** Variables ***
${BROWSERPATH}    ${EMPTY}

*** Test Cases ***
TC1 - Check Filters on Advanced Searh Page
    Open Browser    url=https://www.autohero.com/    browser=Chrome    executable_path=${BROWSERPATH}
