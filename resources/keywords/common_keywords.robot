*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    String
Library    OperatingSystem
Resource   ../variables/common_variables.robot
Resource   ../variables/selector_variables.robot

*** Keywords ***
Open Browser To Home Page
    [Documentation]    Ouvre le navigateur sur la page d'accueil
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    ${TIMEOUT}
    Wait Until Page Contains Element    ${HEADER_LOGO}

Close Browser Session
    [Documentation]    Ferme le navigateur
    Close Browser

Take Screenshot On Failure
    [Documentation]    Prend une capture en cas d'échec
    Run Keyword If Test Failed    Capture Page Screenshot

Wait And Click
    [Documentation]    Attend que l'élément soit cliquable puis clique
    [Arguments]    ${locator}    ${timeout}=${TIMEOUT}
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Wait Until Element Is Enabled    ${locator}    ${timeout}
    Click Element    ${locator}

Wait And Input Text
    [Arguments]    ${locator}    ${text}    ${timeout}=${TIMEOUT}
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Input Text    ${locator}    ${text}

Verify Page Contains
    [Arguments]    ${expected_text}
    Wait Until Page Contains    ${expected_text}    ${TIMEOUT}
    Page Should Contain    ${expected_text}

Generate Unique Email
    [Documentation]    Génère un email unique basé sur le timestamp
    ${timestamp}    Get Time    epoch
    ${unique_email}    Set Variable    ${NEW_USER_EMAIL_PREFIX}${timestamp}@example.com
    RETURN    ${unique_email}