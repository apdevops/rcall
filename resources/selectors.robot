*** Settings ***
Documentation    A resource file with reusable keywords and variables.

*** Variables ***
${signin_button}   xpath=//button[contains(text(), "Sign In")]
${login_email_input}  xpath=//input[@name="email"]
${login_password_input}  xpath=//input[@name="password"]
${organisations}    xpath=//span[contains(text(), "Organisations")]
${organisation_pass_thru_apna_zone}  xpath=//span[@title="Apna zone"]/../../../div[2]/div/div/button
${transport_page_name}  xpath=//span[text()= "Transport Screen"]
${transport_page}  Transport Screen
${transport_page_title}  RollCall - Apna zone
${company_logo}   xpath=//img[@alt="Logo"]
