*** Settings ***
Library    Browser
Resource   ../resources/login.resource
Resource    ../resources/test_cases.resource

Suite Setup    Open Browser Session
Test Teardown    Run Keyword If Test Failed    Take Failure Screenshot


***Test Cases ***
Verify Test Cases Page
    [Tags]    smoke
    Verify Page Loaded  https://automationexercise.com/
    Click Test Cases Button
    Verify Page Loaded    https://automationexercise.com/test_cases