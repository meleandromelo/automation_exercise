*** Settings ***
Library    Browser
Resource   ../resources/login.resource
Resource   ../resources/products.resource

Suite Setup    Open Browser Session
Test Teardown    Run Keyword If Test Failed    Take Failure Screenshot


*Test Cases ***
Verify All Products and product details page
    [Tags]    smoke
    Go to products page
    Click on View Product of first product
    Verify Product Details Displayed

