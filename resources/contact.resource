*** Settings ***
Library    Browser
Resource    common.resource

*** Keywords ***
Click Contact Us
    Click    ${CONTACT_US_BUTTON}

Fill Contact Details
    [Arguments]    ${name}    ${email}    ${subject}    ${your_message}
    Fill Text    ${NAME_INPUT}    ${name}
    Fill Text    ${EMAIL_INPUT}    ${email}
    Fill Text    ${SUBJECT_INPUT}    ${subject}
    Fill Text    ${MESSAGE_INPUT}    ${your_message}

Choose file
    [Arguments]    ${file_path}
    Upload File By Selector    ${UPLOAD_FILE_INPUT}    ${file_path}

Click Submit
    Sleep    1s
    Handle Future Dialogs    accept
    Click  ${SUBMIT_INPUT}

Verify Contact Success Message
    Wait For Elements State    //div[@class="status alert alert-success"]    visible
    
Click Home
    Click    ${HOME_BUTTON}