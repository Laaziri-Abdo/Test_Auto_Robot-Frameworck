*** Settings ***
Resource    ../../resources/keywords/common_keywords.robot
Resource    ../../resources/keywords/authentication_keywords.robot
Resource    ../../resources/variables/user_variables.robot
Test Setup     Open Browser To Home Page
Test Teardown  Run Keywords    Take Screenshot On Failure    AND    Close Browser Session

*** Test Cases ***
Login With Valid Credentials
    [Documentation]    Test de connexion avec des identifiants valides
    [Tags]    login    smoke
    Go To Login Page
    Login With Credentials    ${VALID_EMAIL}    ${VALID_PASSWORD}
    Verify Successful Login

Logout After Login
    [Documentation]    Test de déconnexion après connexion
    [Tags]    login
    Go To Login Page
    Login With Credentials    ${VALID_EMAIL}    ${VALID_PASSWORD}
    Verify Successful Login
    Logout User

Login With Invalid Email
    [Documentation]    Test de connexion avec email invalide
    [Tags]    login    negative
    Go To Login Page
    Login With Credentials    ${INVALID_EMAIL}    ${VALID_PASSWORD}
    Verify Login Failure