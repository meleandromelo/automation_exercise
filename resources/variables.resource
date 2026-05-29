*** Settings ***
Library    Browser

*** Variables ***
${URL}    https://automationexercise.com/
${BROWSER}    chromium

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

${BUTTON_LOGIN}    //button[@data-qa="login-button"]


${INPUT_EMAIL_LOGIN}    //input[@data-qa="login-email"]
${INPUT_PASSWORD_LOGIN}    //input[@name="password"]

${LOGOUT_BUTTON}    //a[@href="/logout"]


${CONTACT_US_BUTTON}    //a[@href="/contact_us"]

${NAME_INPUT}    //input[@name="name"]
${EMAIL_INPUT}    //input[@name="email"]
${SUBJECT_INPUT}    //input[@name="subject"]
${MESSAGE_INPUT}    //textarea[@name="message"]

${UPLOAD_FILE_INPUT}    //input[@name="upload_file"]
${SUBMIT_INPUT}    //input[@name="submit"]
${HOME_BUTTON}    //a[@class="btn btn-success"]

