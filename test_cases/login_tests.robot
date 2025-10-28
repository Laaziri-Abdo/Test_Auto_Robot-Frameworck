*** Settings ***
Library    SeleniumLibrary
Documentation    Automatisation les cas de test avec Robotframework
Test Teardown    Close Browser
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot
*** Test Cases ***
Test Case 1: Login User with correct email and password
     [Tags]      1       smoke
    [Documentation]    Connexion avec email et mot de passe corrects + suppression du compte
    #Étape 1
    Ouvrir Le Site Automation Exercise
    #Étape 2
    Vérifier Page D'Accueil Visible
    #Étape 3
    Aller À La Page De Login
    #Étape 4
    Vérifier Login Page Visible
    #Étape 5
    Se Connecter    ${USER_EMAIL_LOGIN}    ${PASSWORD}
    #Étape 6
    Vérifier Connexion Réussie
    #Étape 7
    Supprimer Le Compte
