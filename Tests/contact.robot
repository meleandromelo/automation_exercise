*** Settings ***
Resource    ../resources/contact.resource
Resource    ../resources/login.resource
Resource    ../resources/account.resource


Test Setup      Open Browser Session
Test Teardown    Run Keyword If Test Failed    Take Failure Screenshot

*** Test Cases ***
Contact Us Form
    [Tags]    contact_Form
    Click Contact Us
    Verify Page Loaded    https://automationexercise.com/contact_us
    Verify Text Visible    Get In Touch
    Fill Contact Details    Leandro    meleandromelo@gmail.com    teste    teste1
    Choose file    C:\\Users\\hypeb\\OneDrive\\Desktop\\Livros\\81IHBy4n6VL._SL1500_.jpg
    Click Submit
    Verify Contact Success Message
    Click home
    Verify Page Loaded     https://automationexercise.com/
