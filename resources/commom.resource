*** Settings ***
Library    Browser
Resource    variables.resource


*** Keywords ***
Open Browser Session
    New Browser     ${BROWSER}    headless=${FALSE}
    New Page    ${URL}