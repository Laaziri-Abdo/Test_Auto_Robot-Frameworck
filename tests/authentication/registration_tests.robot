*** Settings ***
Resource    ../../resources/keywords/common_keywords.robot
Resource    ../../resources/keywords/authentication_keywords.robot
Resource    ../../resources/variables/user_variables.robot
Test Setup     Open Browser To Home Page
Test Teardown  Run Keywords    Take Screenshot On Failure    AND    Close Browser Session

*** Test Cases ***
Register New User
    [Documentation]    Test d'inscription d'un nouvel utilisateur
    [Tags]    registration    smoke
    ${unique_email}    Generate Unique Email
    Go To Signup Page
    Fill Signup Form    ${NEW_USER_NAME}    ${unique_email}
    Verify Signup Form Submitted

Register With Existing Email
    [Documentation]    Test d'inscription avec email existant
    [Tags]    registration    negative
    Go To Signup Page
    Fill Signup Form    ${NEW_USER_NAME}    ${VALID_EMAIL}
    Verify Page Contains    Email Address already exist!