*** Settings ***
Documentation   BaseTest.robot Test Setup and TearDown methods.

Library    SeleniumLibrary
Library    Screenshot
Library    Process
Library    OperatingSystem


*** Variables ***
${chrome_driver}    Drivers/chromedriver

*** Keywords ***
Test Case Setup
    [Arguments]    ${runType}
    IF   "${runType}" == "CONTAINER"
        Open Browser     https://www.hepsiburada.com/    Chrome    desired_capabilities=browserName:chrome,platform:LINUX    remote_url=http://127.0.0.1:4446/wd/hub
    ELSE
        Open Browser     https://www.hepsiburada.com/    Chrome    executable_path=${chrome_driver}
    END
    Maximize Browser Window
    Set Selenium Implicit Wait    30

Test Case TearDown
    Capture Page Screenshot
    Sleep    2
    Close All Browsers

Wait And Click
    [Arguments]    ${selector}
    Wait Until Element Is Visible   ${selector}    timeout=30
    Click Element    ${selector}


Suite Setup
    [Arguments]    ${runType}
    IF   "${runType}" == "CONTAINER"
        Start Docker Containers
        Sleep    30
    END

Suite TearDown
    [Arguments]    ${runType}
    IF   "${runType}" == "CONTAINER"
        Stop Docker Containers
        Sleep    30
    END

Start Docker Containers
    Run    docker-compose up -d

Stop Docker Containers
    Run   docker-compose stop
