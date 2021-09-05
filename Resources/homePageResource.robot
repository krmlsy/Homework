*** Settings ***

Library      SeleniumLibrary
Variables    ../Locators/homePageLocators.py
Resource   ../TestCases/baseTest.robot


*** Keywords ***

Click Account Button
    Wait Until Element Is Visible    ${button_account_page}    timeout=30
    Mouse Over    ${button_account_page}

    
Click Login Page Button
    Wait And Click    ${button_login_page}

Check Login Is Successfull And Home Page is Loaded
    Wait Until Element Is Visible    ${span_check_login}    timeout=10
    Page Should Contain Element      ${span_check_login}

Get Product Number In My chart
    ${value}    Get Text    ${span_chart_item_count}
    [return]    ${value}

Click Shopping Chart Button
    Wait And Click    ${button_shopping_chart}

Click Hepsiburada
    
    Wait And Click    ${link_hepsiburada}

Click First Product In Deal Of The Day
    Wait And Click    ${link_product_deal_of_the_day}

Search Product
    [Arguments]    ${productName}
    Input Text    ${input_product_search}    ${productName}

Click Search Button
    Wait And Click    ${button_search}

Check Search Is Complete
    Wait Until Element Is Visible    ${label_check_search_is_complete}
    Page Should Contain Element    ${label_check_search_is_complete}

Search Brand
    [Arguments]    ${brandName}
    Input Text    ${input_search_brand}    ${brandName}

Click First Product Checkbox
  ${ele}    Get WebElement    id=${checkbox_product}
  Execute Javascript    arguments[0].click();     ARGUMENTS    ${ele}

Click Product Price
  ${ele}    Get WebElement    xpath=${checkbox_product_price_750_1000}
  Execute Javascript    arguments[0].click();     ARGUMENTS    ${ele}

Click Product Color Black
    ${ele}    Get WebElement    id=${link_product_color_black}
    Execute Javascript    arguments[0].click();     ARGUMENTS    ${ele}

Click First Product In Search
    Wait And Click    ${link_first_product_in_search}