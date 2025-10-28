*** Settings ***
Library    SeleniumLibrary
Documentation    Automatisation les cas de test avec Robotframework
Test Teardown    Close Browser
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot
*** Test Cases ***
Test Case 1: Register New User
    [Tags]    1    smoke
    [Documentation]    Inscription complète d'un nouvel utilisateur
    Ouvrir Le Site Automation Exercise
    Vérifier Page D'Accueil Visible
    Log     Étape 3: Page d'accueil visible
    Aller À La Page D'Inscription
    Log     Étape 4: Page d'inscription atteinte
    Vérifier New User Signup Visible
    Log     Étape 5: New User Signup visible
    ${email_unique}    Générer Un Email Unique
    Log    Email généré: ${email_unique}
    Remplir Formulaire Signup    ${USER_NAME}    ${email_unique}
    Log     Étape 6-7: Formulaire signup rempli
    Vérifier Enter Account Information Visible
    Log     Étape 8: Page informations compte visible
    Log     Étape 9-11: Informations compte remplies
    Remplirer Informations Adresse
    Log     Étape 12: Informations adresse remplies
    Créer Le Compte
    Log     Étape 13: Bouton Create Account cliqué
    Vérifier Compte Créé
    Log     Étape 14: Compte créé confirmé
    Cliquer Continue
    Log     Étape 15: Continue cliqué
    Vérifier Logged In As Username
    Log     Étape 16: Logged in as username confirmé
    Supprimer Le Compte
    Log     Étape 17-18: Compte supprimé confirmé
    Cliquer Continue
    Log     TEST COMPLET RÉUSSI!
    Capture Page Screenshot