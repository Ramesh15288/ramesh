*** Settings ***
Library           SeleniumLibrary

*** Variables ***
#${ramesh}    this is test from web
${URL}            https://www.facebook.com/
${USERNAME}       your_username
${PASSWORD}       your_password

*** Test Cases ***
Open Facebook Login Page
    Open Browser    ${URL}    chrome
    Title Should Be    Facebook – log in or sign up
    Close Browser

Successful Login
    Open Browser    ${URL}    chrome
    Input Text    id=email    ${USERNAME}
    Input Text    id=pass     ${PASSWORD}
    Click Button  name=login
    Wait Until Page Contains    News Feed
    Close Browser

Invalid Login
    Open Browser    ${URL}    chrome
    Input Text    id=email    invalid_user
    Input Text    id=pass     invalid_pass
    Click Button  name=login
    Wait Until Page Contains    The email or mobile number you entered isn’t connected to an account.
    Close Browser
