*** Settings ***
Resource   ../resources/login.resource
Resource    ../resources/account.resource

Test Setup      Open Browser Session
Test Teardown    Run Keyword If Test Failed    Take Failure Screenshot

*** Test Cases ***
Register User Successfully and Delete Account
    [Tags]    smoke    authentication     delete_account
    Verify Page Loaded    automationexercise.com
    Click Signup/Login Button
    Verify Text Visible    New User Signup!
    Fill Signup Credentials    Leandro    fernandariel32@gmail.com
    Click Signup Button
    Verify Text Visible    Enter Account Information
    Click Gender
    Fill Password    123456
    Select Birth Day    23
    Select Birth Month    August
    Select Birth Year    1995
    Select Newsletter Checkbox
    Select Special Offers Checkbox
    Fill Address Information    Leandro    Melo    Organiwise    Portugal    Lisboa
    Select Country    Israel
    Fill State    Pernambuco
    Fill City    Jaboatão
    Fill Zipcode    987654321
    Fill Mobile Number    9987654321
    Click Create Account Button
    Verify Text Visible    Account Created!
    Click Continue Button
    Verify Text Visible    Delete Account
    Click Delete Button    
    Verify Text Visible    Account Deleted!

Register User Successfully
    [Tags]    smoke    authentication   create
    Verify Page Loaded    automationexercise.com
    Click Signup/Login Button
    Verify Text Visible    New User Signup!
    Fill Signup Credentials    Leandro    fernandariel32@gmail.com
    Click Signup Button
    Verify Text Visible    Enter Account Information
    Click Gender
    Fill Password    123456
    Select Birth Day    23
    Select Birth Month    August
    Select Birth Year    1995
    Select Newsletter Checkbox
    Select Special Offers Checkbox
    Fill Address Information    Leandro    Melo    Organiwise    Portugal    Lisboa
    Select Country    Israel
    Fill State    Pernambuco
    Fill City    Jaboatão
    Fill Zipcode    987654321
    Fill Mobile Number    9987654321
    Click Create Account Button
    Verify Text Visible    Account Created!
    Click Continue Button
    Verify Text Visible    Delete Account

Login User With Correct Email And Password
    [Tags]    smoke    authentication    login
    Verify Page Loaded    automationexercise.com
    Click Signup/Login Button
    Verify Text Visible    Login to your account
    Fill Login Credentials   fernandariel32@gmail.com    123456
    Click Login Button
    Verify Text Visible    Logged in as Leandro

Login User with incorrect email and password
    [Tags]    authentication    incorrect_email
    Verify Page Loaded    automationexercise.com
    Click Signup/Login Button
    Verify Text Visible    Login to your account
    Fill Login Credentials   wrongemail@gmail.com    123456
    Click Login Button
    Verify Text Visible    Your email or password is incorrect!

Logout User
    [Tags]   authentication    logout
    Verify Page Loaded    automationexercise.com
    Click Signup/Login Button
    Verify Text Visible    Login to your account
    Fill Login Credentials   fernandariel32@gmail.com    123456
    Click Login Button
    Verify Text Visible    Logged in as Leandro
    Click Logout   
    Verify Page Loaded    automationexercise.com

Register User with existing email
    [Tags]    authentication    existing_email 
    Verify Page Loaded    automationexercise.com
    Click Signup/Login Button
    Verify Text Visible    New User Signup!
    Fill Signup Credentials    Leandro    meleandromelo@gmail.com
    Click Signup Button
    Verify Text Visible    Email Address already exist!