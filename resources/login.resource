*** Settings ***
Library    Browser
Resource    commom.resource

*** Keywords ***
Verify Home Page Loaded 
   ${url_homepage}=    Get Url
   Should Contain    ${url_homepage}  ${URL}
Click Signup/Login Button
    Click    //a[@href="/login"]
Verify Text Visible
    [Arguments]    ${expected_text}
    Wait For Elements State    text=${expected_text}    visible

Fill Signup Credentials
    [Arguments]    ${name}    ${email_adress}
    Fill Text    ${NAME_SIGNUP}    ${name}
    Fill Text    ${EMAIL_SIGNUP}    ${email_adress}

Click Signup Button
    Click    //button[@data-qa="signup-button"]