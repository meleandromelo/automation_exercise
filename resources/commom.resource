*** Settings ***
Library    Browser
Resource    variables.resource


*** Keywords ***
Open Browser Session
    New Browser     ${BROWSER}    headless=${FALSE}
    New Page    ${URL}

Take Failure Screenshot
    Run Keyword And Ignore Error    Take Screenshot    screenshots/${TEST NAME}.png