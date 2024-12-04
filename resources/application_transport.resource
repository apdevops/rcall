*** Settings ***
Library    SeleniumLibrary
Variables  ../resources/variables.py
Resource  ../resources/selectors.robot

*** Keywords ***
Go to the URL
    Open Browser    ${APPLICATION_URL}    ${BROWSER}
    Maximize Browser Window

Login using the credentials provided
    Wait Until Element Is Visible  ${signin_button}
    Input Text      ${login_email_input}  ${USERNAME}
    Input Text      ${login_password_input}  ${PASSWORD}
    Click Button   ${signin_button}
    Wait Until Element Is Visible      ${company_logo}      10

If not already on the Organizations List, click "Organisations"
   ${current_url}=   Get Location
   Run Keyword If    '${current_url}' != '${ORG_PAGE_URL}'    Click Element    ${organisations}
   
Click the Pass Thru Authentication button on an organization
    Wait Until Element Is Visible    ${organisation_pass_thru_apna_zone}
    Click Element    ${organisation_pass_thru_apna_zone}

Verify that this button redirects you to the Transport Screen of that organization
    Wait Until Element Is Visible    ${transport_page_name}
    Element Text Should Be    ${transport_page_name}    ${transport_page}
    ${page_title}=   Get Title
    Should Match  ${page_title}    ${transport_page_title}
    Close Browser