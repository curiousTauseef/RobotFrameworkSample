*** Settings ***
Documentation     This is some basic info about the whole suite
Library           Selenium2Library
Resource          ./global.robot

*** Variables ***
#${FP_FQDN}          https://portalv2.funpush.com.tw
${FP_FQDN}          ${FP_FQDN_A}


*** Test Cases ***
User Login
    [Documentation]    This is some basic info about the whole suite
    [Tags]    Smoke
    Open Browser      ${FP_FQDN}    ${DEFAULT_BROWSER}
    Input Text        Email   user@jamzoo.com.tw
    Input Text        Password    imjusttestdata
    Click Button      xpath=//input[@value='Login']
    Close Browser

*** Keywords ***
