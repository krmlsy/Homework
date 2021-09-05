*** Variables ***
${runType}    CONTAINER   # CONTAINER or LOCAL

*** Settings ***
Resource   TestCases/testCase1.robot
Resource   TestCases/testCase2.robot

Library    dataP.py

Test Setup       Test Case Setup    ${runType}
Test Teardown    Test Case TearDown

Suite Setup      Suite Setup    ${runType}
Suite Teardown   Suite TearDown    ${runType}



*** Test Cases ***
Test Case 1
    [Documentation]   First Test Scenario
    [Tags]    Test Case 1
    Log    Test Started
    ${username}=    Json Data    TestData/data.json    login.username
    ${password}=    Json Data    TestData/data.json    login.password
    Test Case 1    ${username}   ${password}


Test Case 2
    [Documentation]   Second Test Scenario
    [Tags]    Test Case 2
    Log    Test Started
    ${username}=    Json Data    TestData/data.json    login.username
    ${password}=    Json Data    TestData/data.json    login.password
    ${product}=    Json Data    TestData/data.json    product.name
    ${productBrand}=    Json Data    TestData/data.json    product.brand
    Test Case 2   ${username}   ${password}    ${product}    ${productBrand}
