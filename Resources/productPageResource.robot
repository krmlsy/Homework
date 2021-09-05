*** Settings ***

Library      SeleniumLibrary
Library    XML
Variables    ../Locators/productPageLocators.py
Resource   ../TestCases/baseTest.robot


*** Keywords ***
Click To Add Chart Button
    Wait And Click    ${button_add_to_chart}

Click To Go To Chart Button
    Wait And Click    ${button_go_to_chart_button}

Check Product Page Is Loaded
    Wait Until Element Is Visible    ${button_add_to_chart}
    Page Should Contain Element    ${button_add_to_chart}

Click On Product Comments
    Scroll Element Into View    ${link_product_comments}
    Wait And Click    ${link_product_comments}

Click First Review Is Usefull
    Execute Javascript    window.scrollTo(0, window.innerHeight*2);
    Wait And Click    ${button_review_is_useful}

Check Review Thank You Message Is Shown
    Wait Until Element Is Visible    ${span_review_thank_you}
    Page Should Contain Element    ${span_review_thank_you}