* Settings *
Documentation    
Library           SeleniumLibrary
 
Suite Setup       Open Browser    ${url}    chrome
 
* Variables *
${URL}             http://automationexercise.com
${MAINCLASS}       Automation
${REGI_BTN}        xpath=//a[@href='/login']
${NAME}            john
${EMAIL}           test@automationexercise.com
${NAME_INPUT}      name:name
${EMAIL_INPUT}     xpath=//input[@type='email' and @data-qa='signup-email']
${SIGN_UP_BTN}     xpath=//button[contains(text(),'Signup')]
${SIGN_UP_PAGE}    Enter Account Information
${GENDER_RADIO}    id:id_gender1
${DAYS_DROPDOWN}    id=days
${MONTHS_DROPDOWN}    id=months
${YEARS_DROPDOWN}    id=years
${COUNTRY_DROPDOWN}    id=country
* Keywords *
Check Page
   Wait Until Page Contains        ${MAINCLASS}
Click Register
   Click Element                   ${REGI_BTN}
Input Name
   [Arguments]              ${NAME}
   Input Text    ${NAME_INPUT}    ${NAME}
 
Input Email
   [Arguments]              ${EMAIL}
   Input Text    ${EMAIL_INPUT}    ${EMAIL}
Click Signup
   Click Element    ${SIGN_UP_BTN}
Check SignupPage
   Wait Until Page Contains        ${SIGN_UP_PAGE}
Click Gender
   Click Element    ${GENDER_RADIO}
 
* Test Cases *
Reigstering
   [Documentation]
   Check Page
   Click Register
   Input Name        ${NAME}
   Input Email       ${EMAIL}
   Click Signup
   Check SignupPage
   Click Gender
    Input Text    id=first_name    Natthawiranut
    Input Text    id=last_name    Chaipa
    Input Text    id=password    securepassword
    Select From List By Value    ${DAYS_DROPDOWN}    31
    Select From List By Value    ${MONTHS_DROPDOWN}    10
    Select From List By Value    ${YEARS_DROPDOWN}    2002
    Select Checkbox    id=newsletter
    Select Checkbox    id=optin
    Input Text    id=address1    256 Nam
    Input Text    id=address2    456 Tas
    Select From List By Value    ${COUNTRY_DROPDOWN}   Thailand 
    Input Text    id=state    nb
    Input Text    id=city    San Francisco
    Input Text    id=zipcode    5642
    Input Text    id=mobile_number    3214569
    Click Element    xpath=//button[contains(text(),'Create Account')]