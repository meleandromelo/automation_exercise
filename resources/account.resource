*** Settings ***
Library    Browser
Resource       variables.resource

*** Keywords ***
Click Gender
    Click     ${MR}
Fill Password
    [Arguments]    ${password}
    Fill Text      ${INPUT_PASSWORD}     ${password}
Select Birth Day
    [Arguments]    ${day}
    Select Options By    ${SELECT_DAY}    text    ${day}
Select Birth Month
  [Arguments]    ${month}
    Select Options By    ${SELECT_MONTH}    text    ${month}
Select Birth Year
  [Arguments]    ${year}
    Select Options By    ${SELECT_YEAR}    text    ${year}
Select Newsletter Checkbox
    Click    ${NEWSLETTER_INPUT}
Select Special Offers Checkbox
    Click    ${OFFERS_INPUT}
Fill Address Information
    [Arguments]    ${first_name}    ${last_name}    ${company}    ${address}    ${address_2}
    Fill Text   ${FIRST_NAME_INPUT}    ${first_name}
    Fill text   ${LAST_NAME_INPUT}    ${last_name}
    Fill Text  ${COMPANY_INPUT}    ${company}
    Fill Text  ${ADDRESS_INPUT}    ${address}
    Fill Text    ${ADRESS_2_INPUT}    ${address_2}
Select Country
  [Arguments]    ${country}
    Select Options By    ${SELECT_COUNTRY}  value  ${country}
Fill State
    [Arguments]    ${state}
    Fill Text    ${STATE_INPUT}    ${state}
Fill City
  [Arguments]    ${city}
    Fill Text    ${CITY_INPUT}    ${city}
Fill Zipcode
  [Arguments]    ${zipcode}
    Fill Text    ${ZIPCODE_INPUT}    ${zipcode}
Fill Mobile Number
  [Arguments]    ${mobile_number}
    Fill Text    ${MOBILE_NUMBER_INPUT}    ${mobile_number}
Click Create Account Button
    Click    ${CREATE_ACCOUNT_BUTTON}
Click Continue Button
    Click    ${CONTINUE_BUTTON}  
Click Delete Button    
    Click    ${DELETE_ACCOUNT_BUTTON}