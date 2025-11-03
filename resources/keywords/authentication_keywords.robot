*** Settings ***
Resource   common_keywords.robot
Resource   ../variables/user_variables.robot
Resource   ../variables/selector_variables.robot
Resource   ../variables/message_variables.robot

*** Keywords ***
Go To Login Page
    [Documentation]    Navigue vers la page de connexion
    Wait And Click    ${LOGIN_MENU}
    Verify Page Contains    Login to your account

Login With Credentials
    [Documentation]    Effectue la connexion avec email et mot de passe
    [Arguments]    ${email}    ${password}
    Wait And Input Text    ${LOGIN_EMAIL_FIELD}    ${email}
    Wait And Input Text    ${LOGIN_PASSWORD_FIELD}    ${password}
    Wait And Click    ${LOGIN_BUTTON}

Verify Successful Login
    [Documentation]    Vérifie que la connexion est réussie
    Verify Page Contains    ${LOGIN_SUCCESS_MSG}
    Page Should Contain Element    ${LOGOUT_MENU}

Verify Login Failure
    [Documentation]    Vérifie le message d'erreur de connexion
    Wait Until Page Contains Element    ${LOGIN_ERROR_MSG}
    Element Should Contain    ${LOGIN_ERROR_MSG}    ${LOGIN_ERROR_MSG_TEXT}

Go To Signup Page
    [Documentation]    Navigue vers la page d'inscription
    Wait And Click    ${LOGIN_MENU}
    Verify Page Contains    Login to your account

Fill Signup Form
    [Documentation]    Remplit le formulaire d'inscription
    [Arguments]    ${name}    ${email}
    Wait And Input Text    ${SIGNUP_NAME_FIELD}    ${name}
    Wait And Input Text    ${SIGNUP_EMAIL_FIELD}    ${email}
    Wait And Click    ${SIGNUP_BUTTON}

Verify Signup Form Submitted
    [Documentation]    Vérifie que le formulaire d'inscription est soumis
    Verify Page Contains    ${SIGNUP_SUCCESS_MSG}

Logout User
    [Documentation]    Déconnecte l'utilisateur
    Wait And Click    ${LOGOUT_MENU}
    Verify Page Contains    Login to your account