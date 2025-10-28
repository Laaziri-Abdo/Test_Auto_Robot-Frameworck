*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${DEFAULT_TIMEOUT}    15s

*** Keywords ***
Suite Setup
    Log    Démarrage de la suite de tests
    Set Selenium Timeout    ${DEFAULT_TIMEOUT}

Suite Teardown
    Close All Browsers
    Log    Fin de la suite de tests

Test Setup
    Log    Démarrage du test: ${TEST NAME}

Test Teardown
    Run Keyword If Test Failed    Capture Page Screenshot    ${TEST NAME}_failed.png
    Log    Fin du test: ${TEST NAME}