*** Settings ***
Documentation   FireFly Homework Test Case 2.

Library    SeleniumLibrary
Resource   ../Resources/loginPageResource.robot
Resource   ../Resources/homePageResource.robot
Resource   ../Resources/orderPageResource.robot
Resource   ../Resources/productPageResource.robot

*** Keywords ***

Test Case 2
    [Arguments]    ${username}     ${password}    ${product}    ${productBrand}
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

    Search Product    bluetooth kulaklık
    Click Search Button
    Check Search Is Complete

    Search Brand    JBL
    Click First Product Checkbox
    Check Search Is Complete
    Click Product Price
    Check Search Is Complete

    Click Product Color Black
    Check Search Is Complete

    Click First Product In Search
    Check Product Page Is Loaded

    Click On Product Comments
    Click First Review Is Usefull
    Check Review Thank You Message Is Shown
