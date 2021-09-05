*** Settings ***

Library      SeleniumLibrary
Variables    ../Locators/loginPageLocators.py
Resource   ../TestCases/baseTest.robot


*** Keywords ***

Check Login Page Is Open
    Wait Until Element Is Visible    ${input_login_username}    timeout=10
    Page Should Contain Element      ${input_login_username}

Set User Mail
    [Arguments]    ${userName}
    Input Text    ${input_login_username}   ${userName}

Set User Password
    [Arguments]    ${password}
    Input Password    ${input_login_password}   ${password}

Click Login Button
    Wait And Click    ${button_login_button}