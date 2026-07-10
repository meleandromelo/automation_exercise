*** Settings ***
Library    Browser

*** Variables ***

# Configuração
${URL}        https://automationexercise.com/
${BROWSER}    chromium

# Signup (Cadastro)
${NAME_SIGNUP}                       //input[@placeholder="Name"]
${EMAIL_SIGNUP}                      //input[@data-qa="signup-email"]
${BUTTON_SIGNUP_LOGIN}               //a[@href="/login"]
${BUTTON_SIGNUP}                     //button[@data-qa="signup-button"]
${TEXT_ENTER_ACCOUNT_INFORMATION}    //h2[contains(.,'Enter Account Information')]
${MR}                                //label[@for="id_gender1"]

${SELECT_DAY}                    //select[@id="days"]
${SELECT_MONTH}                  //select[@id="months"]
${SELECT_YEAR}                   //select[@id="years"]

${INPUT_PASSWORD}                //input[@id='password']
${NEWSLETTER_INPUT}              //input[@id="newsletter"]
${OFFERS_INPUT}                  //input[@id="optin"]

${FIRST_NAME_INPUT}              //input[@id="first_name"]
${LAST_NAME_INPUT}               //input[@id="last_name"]
${COMPANY_INPUT}                 //input[@id="company"]
${ADDRESS_INPUT}                 //input[@id="address1"]
${ADDRESS_2_INPUT}               //input[@id="address2"]

${SELECT_COUNTRY}                //select[@id="country"]
${STATE_INPUT}                   //input[@id="state"]
${CITY_INPUT}                    //input[@id="city"]
${ZIPCODE_INPUT}                 //input[@id="zipcode"]
${MOBILE_NUMBER_INPUT}           //input[@id="mobile_number"]

${CREATE_ACCOUNT_BUTTON}         //button[@data-qa="create-account"]
${CONTINUE_BUTTON}               //a[@data-qa="continue-button"]
${DELETE_ACCOUNT_BUTTON}         //a[@href="/delete_account"]

# Login
${BUTTON_LOGIN}          //button[@data-qa="login-button"]
${INPUT_EMAIL_LOGIN}     //input[@data-qa="login-email"]
${INPUT_PASSWORD_LOGIN}  //input[@name="password"]
${LOGOUT_BUTTON}         //a[@href="/logout"]

# Contato
${CONTACT_US_BUTTON}     //a[@href="/contact_us"]
${NAME_INPUT}            //input[@name="name"]
${EMAIL_INPUT}           //input[@name="email"]
${SUBJECT_INPUT}         //input[@name="subject"]
${MESSAGE_INPUT}         //textarea[@name="message"]
${UPLOAD_FILE_INPUT}     //input[@name="upload_file"]
${SUBMIT_INPUT}          //input[@name="submit"]
${HOME_BUTTON}           //a[@class="btn btn-success"]

# Test Cases
${TEST_CASES_BUTTON}     //a[contains(text(),'Test Cases')]
${PRODUCTS_BUTTON}       //a[@href="/products"]
${FIRST_PRODUCT}         //a[@href="/product_details/1"]
${PRODUCT_NAME}          //div[@class='product-information']/h2
${PRODUCT_CATEGORY}      //p[contains(text(),'Category')]
${PRODUCT_PRICE}         (//span[contains(.,'Rs.')])[1]
${PRODUCT_AVAILABILITY}  //div[@class='product-information']/p[2]
${PRODUCT_CONDITION}     //div[@class='product-information']/p[3]
${PRODUCT_BRAND}         //div[@class='product-information']/p[4]

# Products
${SEARCH_INPUT}          //input[@id="search_product"]
${SEARCH_BUTTON}         //button[@id="submit_search"]
${SEARCHED_PRODUCTS}      //h2[contains(.,'Searched Products')]
${SEARCHED_PRODUCTS_NAMES}    //div[contains(@class,'features_items')]//div[contains(@class,'productinfo') and contains(@class,'text-center')]/p
