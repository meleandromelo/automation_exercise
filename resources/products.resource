***Settings***
Library    Browser
Resource    common.resource
Resource    login.resource


***Keywords***
Go to products page
    Verify Page Loaded  https://automationexercise.com/
    Click   ${PRODUCTS_BUTTON}
    Verify Page Loaded  https://automationexercise.com/products

Click on View Product of first product
    Click    ${FIRST_PRODUCT} 
    Verify Page Loaded    https://automationexercise.com/product_details/1

Verify Product Details Displayed
    FOR    ${locator}    IN     ${PRODUCT_NAME}     ${PRODUCT_CATEGORY}    ${PRODUCT_PRICE}      ${PRODUCT_AVAILABILITY}    ${PRODUCT_CONDITION}    ${PRODUCT_BRAND}
    Wait For Elements State  ${locator}
    END