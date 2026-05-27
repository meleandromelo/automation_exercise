*** Settings ***
Library    Browser
Resource   ../resources/commom.resource
Resource   ../resources/login.resource
Resource    ../resources/account.resource

Test Teardown    Run Keyword If Test Failed    Take Screenshot    filename=screenshots/${TEST NAME}.png


*** Test Cases ***
Register User Successfully
    Open Browser Session
    Verify Home Page Loaded
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
