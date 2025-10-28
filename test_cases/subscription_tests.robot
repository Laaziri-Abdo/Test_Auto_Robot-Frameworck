*** Settings ***
Library    SeleniumLibrary
Documentation    Test d'abonnement à la newsletter
Test Teardown    Close Browser
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

*** Test Cases ***
Test Case 10: Verify Subscription in home page
    [Tags]    10    subscription    smoke
    [Documentation]    Vérification de l'abonnement à la newsletter
    # 1. Launch browser
    # 2. Navigate to url 'http://automationexercise.com'
    Ouvrir Le Site Automation Exercise
    # 3. Verify that home page is visible successfully
    Vérifier Page D'Accueil Visible
    Log    Étape 3: Page d'accueil visible
    # 4. Scroll down to footer
    Scroller Vers Footer
    Log    Étape 4: Scroll vers le footer effectué
    # 5. Verify text 'SUBSCRIPTION'
    Vérifier Texte Subscription Visible
    Log    Étape 5: Texte SUBSCRIPTION vérifié
    # 6. Enter email address in input and click arrow button
    Saisir Email Et S abonner    ${NEWSLETTER_EMAIL}
    Log    Étape 6: Email saisi et bouton cliqué
    # 7. Verify success message 'You have been successfully subscribed!' is visible
    Vérifier Message Abonnement Réussi
    Log    Étape 7: Message de succès d'abonnement vérifié
    Log    TEST ABONNEMENT RÉUSSI!
    Capture Page Screenshot    test10_subscription.png