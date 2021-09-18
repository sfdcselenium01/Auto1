*** Settings ***
Documentation     Auto1/QA Task
Suite Teardown    Close Browser
Library           SeleniumLibrary
Library           String
Library           Collections
Resource          Keywords.robot


*** Test Cases ***
TC1 - Check Filters on Advanced Searh Page
    Open Browser    url=https://www.autohero.com/    browser=Chrome    executable_path=C:\\hostedtoolcache\\windows\\Python\\3.7.9\\x64\\Scripts\\chromedriver.exe
