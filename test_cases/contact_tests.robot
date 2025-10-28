*** Settings ***
Library    SeleniumLibrary
Documentation    Test du formulaire de contact avec upload de fichier
Test Teardown    Close Browser
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

*** Test Cases ***
    Test Case 6: Contact Us Form
        [Tags]    6    contact    smoke
        [Documentation]    Test du formulaire de contact avec upload de fichier
        Ouvrir Le Site Automation Exercise
        Vérifier Page D'Accueil Visible
        Log    Étape 3: Page d'accueil visible
        # 3. Click on 'Contact Us' button
        Aller À La Page Contact
        Log    Étape 4: Bouton Contact Us cliqué
        # 4. Verify 'GET IN TOUCH' is visible
        Vérifier Get In Touch Visible
        Log    Étape 5: GET IN TOUCH visible
        # 5. Enter name, email, subject and message
        Remplir Formulaire Contact    ${CONTACT_NAME}    ${CONTACT_EMAIL}    ${CONTACT_SUBJECT}    ${CONTACT_MESSAGE}
        Log    Étape 6: Formulaire contact rempli
        # 6. Upload file
        Uploader Fichier    ${UPLOAD_FILE_PATH}
        Log    Étape 7: Fichier uploadé
        # 7. Click 'Submit' button
        Soumettre Formulaire Contact
        Log    Étape 8: Bouton Submit cliqué
        # 8. Click OK button (alerte)
        Accepter Alerte
        Log    Étape 9: Alerte acceptée
        # 0. Verify success message 'Success! Your details have been submitted successfully.' is visible
        Vérifier Message Succès Contact
        Log    Étape 10: Message de succès vérifié
        # 10. Click 'Home' button and verify that landed to home page successfully
        Retourner À L'Accueil
        Vérifier Page D'Accueil Visible
        Log    Étape 11: Retour à l'accueil vérifié
        Log    TEST CONTACT US RÉUSSI!
        Capture Page Screenshot    test6_contact_us.png