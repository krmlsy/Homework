*** Settings ***

Library      SeleniumLibrary
Variables    ../Locators/orderPageLocators.py
Resource   ../TestCases/baseTest.robot


*** Keywords ***

Click Delete Product Button
    Wait And Click    ${button_delete_product}

Click Continue Button
    Wait And Click    ${button_continue}

Check Payment Buton Is Active
    Wait Until Element Is Visible    ${button_continue}    timeout=10
    Page Should Contain Element    ${button_continue}