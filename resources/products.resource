***Settings***
Library    Browser
Resource    common.resource
Resource    login.resource


***Keywords***
Go to products page
    Verify Page Loaded   https://automationexercise.com/
    Click   ${PRODUCTS_BUTTON}
    Verify Page Loaded  https://automationexercise.com/products

Click on View Product of first product
    Click    ${FIRST_PRODUCT} 
    Verify Page Loaded    https://automationexercise.com/product_details/1

Verify Product Details Displayed
    FOR    ${locator}    IN     ${PRODUCT_NAME}     ${PRODUCT_CATEGORY}    ${PRODUCT_PRICE}      ${PRODUCT_AVAILABILITY}    ${PRODUCT_CONDITION}    ${PRODUCT_BRAND}
    Wait For Elements State  ${locator}
    END
Search product with name
    [arguments]    ${product_name}
    Fill Text  ${SEARCH_INPUT}    ${product_name}
    Click    ${SEARCH_BUTTON}

Verify Product Search Results
    [arguments]    ${product_name}
    Wait For Elements State    ${BLUE_TOP_PRODUCT}    visible
    ${count}=    Get Element Count    ${BLUE_TOP_PRODUCT}
    Should Be True    ${count} > 0
    FOR    ${i}    IN RANGE    1    ${count + 1}
        ${locator}=    Set Variable    (${BLUE_TOP_PRODUCT})[${i}]
        ${text}=    Get Text    ${locator}
        Should Contain    ${text}    ${product_name}    ignore_case=True
    END