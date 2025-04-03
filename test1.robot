*** Settings ***
Documentation     This is a demo test suite.
Library           SeleniumLibrary

*** Variables ***
${URL}            https://example.com
${BROWSER}        Chrome

*** Test Cases ***
Open Browser and Verify Title
    [Documentation]    Open the browser and verify the page title.
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    Example Domain
    Close Browser

Verify Element on Page
    [Documentation]    Verify the presence of an element on the page.
    Open Browser    ${URL}    ${BROWSER}
    Element Should Be Visible    xpath://h1
