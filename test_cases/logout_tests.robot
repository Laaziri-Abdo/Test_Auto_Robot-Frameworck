*** Settings ***
Library    SeleniumLibrary
Documentation    Automatisation les cas de test avec Robotframework
Test Teardown    Close Browser
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

*** Test Cases ***
Test Case 4: Logout User
    [Tags]    4    logout    smoke
    [Documentation]    Test de déconnexion utilisateur

    Ouvrir Le Site Automation Exercise
    # 2
    Vérifier Page D'Accueil Visible
    Log    Étape 3: Page d'accueil visible
    # 3. Click on 'Signup / Login' button
    Aller À La Page De Login
    Log    Étape 4: Bouton Signup/Login cliqué
    # 4. Verify 'Login to your account' is visible
    Vérifier Login Page Visible
    Log    Étape 5: Page de login vérifiée
    # 5. Click 'login' button
    Se Connecter    ${USER_EMAIL_LOGIN}    ${PASSWORD}
    Log    Étape 6-7: Connexion effectuée
    # 6. Verify that 'Logged in as username' is visible
    Vérifier Connexion Réussie
    Log    Étape 8: Logged in as username vérifié
    # 7. Click 'Logout' button
    Cliquer Logout
    Log    Étape 9: Bouton Logout cliqué
    # 8. Verify that user is navigated to login page
    Vérifier Login Page Visible
    Log    Étape 10: Navigation vers page login vérifiée
    Log    TEST DE LOGOUT RÉUSSI!
    Capture Page Screenshot    test4_logout.png