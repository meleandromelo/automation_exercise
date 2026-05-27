*** Settings ***
Library    Browser

*** Variables ***
${URL}    https://automationexercise.com/
${BROWSER}    chromium


${HOME_TEXT}    
${NAME_SIGNUP}    //input[@placeholder="Name"]
${EMAIL_SIGNUP}    //input[@data-qa="signup-email"]

# locators
${BUTTON_SIGNUP_LOGIN}    //a[@href="/login"]

#Button signup
${BUTTON_SIGNUP}    //button[@data-qa="signup-button"]

#Verify Enter Account Information
${TEXT_ENTER_ACCOUNT_INFORMATION}    //h2[contains(.,'Enter Account Information')]

#Gender
${MR}    //label[@for="id_gender1"]

#Birth
${SELECT_DAY}    //select[@id="days"]
${SELECT_MONTH}    //select[@id="months"]
${SELECT_YEAR}    //select[@id="years"]

${INPUT_PASSWORD}    xpath=//input[@id='password']

${NEWSLETTER_INPUT}    xpath=//input[@id="newsletter"]
${OFFERS_INPUT}        xpath=//input[@id="optin"]

${FIRST_NAME_INPUT}   xpath=//input[@id="first_name"]
${LAST_NAME_INPUT}    xpath=//input[@id="last_name"]
${COMPANY_INPUT}    xpath=//input[@id="company"]
${ADDRESS_INPUT}    xpath=//input[@id="address1"]
${ADRESS_2_INPUT}    xpath=//input[@id="address2"]

${SELECT_COUNTRY}   //select[@id="country"]
${STATE_INPUT}    //input[@id="state"]
${CITY_INPUT}    //input[@id="city"]
${ZIPCODE_INPUT}    //input[@id="zipcode"]
${MOBILE_NUMBER_INPUT}    //input[@id="mobile_number"]

${CREATE_ACCOUNT_BUTTON}    //button[@data-qa="create-account"]

${CONTINUE_BUTTON}    //a[@data-qa="continue-button"]
${DELETE_ACCOUNT_BUTTON}    //a[@href="/delete_account"]