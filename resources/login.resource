*** Settings ***
Library    Browser
Resource    commom.resource

*** Keywords ***
Verify Page Loaded
    [Arguments]     ${expected_url}
   ${url_homepage}=    Get Url
   Should Contain    ${url_homepage}  ${expected_url}
Click Signup/Login Button
    Click    ${BUTTON_SIGNUP_LOGIN}
Verify Text Visible
    [Arguments]    ${expected_text}
    Get Text    text=${expected_text}
Fill Signup Credentials
    [Arguments]    ${name}    ${email}
    Fill Text    ${NAME_SIGNUP}    ${name}
    Fill Text    ${EMAIL_SIGNUP}    ${email}
Click Signup Button
    Click    ${BUTTON_SIGNUP}
Click Login Button
    Click    ${BUTTON_LOGIN}
Fill Login Credentials
    [Arguments]    ${email}   ${password}
    Fill Text    ${INPUT_EMAIL_LOGIN}    ${email}
    Fill Text    ${INPUT_PASSWORD_LOGIN}    ${password}
Click Logout
    Click    ${LOGOUT_BUTTON}


