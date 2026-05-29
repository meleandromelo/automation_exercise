*** Settings ***
Test Setup      Open Browser Session
Test Teardown    Run Keyword If Test Failed    Take Screenshot    screenshots/${TEST NAME}.png

*** Test Cases ***