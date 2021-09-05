*** Settings ***
Documentation   FireFly Homework Test Case 1.

Library    SeleniumLibrary
Resource   ../Resources/loginPageResource.robot
Resource   ../Resources/homePageResource.robot
Resource   ../Resources/orderPageResource.robot
Resource   ../Resources/productPageResource.robot

*** Keywords ***

Test Case 1 
    [Arguments]    ${username}     ${password}
    #HomePage
    Click Account Button
    Click Login Page Button
    
    #Login Page
    Check Login Page Is Open
    Set User Mail    ${username} 
    Set User Password    ${password}
    Click Login Button

    #HomePage
    Check Login Is Successfull And Home Page is Loaded
    #Login is completed

    ${cartItemCount}    Get Product Number In My chart
    
    # if we have the item in chart, remove the item
    IF    "${cartItemCount}" != "0"
        Log    We have this item already
        Click Shopping Chart Button
        Click Delete Product Button
        Click Hepsiburada
        Check Login Is Successfull And Home Page is Loaded        
    ELSE
        Log    Our chart is empty code will continue
    END

    # click first product on main page
    Click First Product In Deal Of The Day
    Click To Add Chart Button
    Click To Go To Chart Button

    Click Continue Button
    Check Payment Buton Is Active
