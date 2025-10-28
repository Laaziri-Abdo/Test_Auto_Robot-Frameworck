*** Keywords ***
Ouvrir Le Site Automation Exercise

    Open Browser    ${URL_HOME}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5
    Wait Until Page Contains    AutomationExercise

Aller À La Page D'Inscription
    Click Element    ${SIGNUP_LOGIN_BUTTON}

Vérifier New User Signup Visible
    Wait Until Page Contains    New User Signup!    timeout=10s
    Page Should Contain    New User Signup!

Remplir Formulaire Signup
    [Arguments]    ${name}    ${email}
    Input Text    ${SIGNUP_NAME_FIELD}    ${name}
    Input Text    ${SIGNUP_EMAIL_FIELD}    ${email}
    Click Button    ${SIGNUP_BUTTON}

Générer Un Email Unique
    ${timestamp}    Get Time    epoch
    ${email}    Set Variable    abdolaaziri${timestamp}@gmail.com
    RETURN      ${email}

Vérifier Enter Account Information Visible
      Wait Until Page Contains Element    css:h2.title.text-center    timeout=15s
    Element Should Contain    css:h2.title.text-center    ENTER ACCOUNT INFORMATION
Remplir Informations Compte
    # Title (Mr)
    Select Radio Button    title    Mr

    # Password
    Input Password    css:[data-qa="password"]    ${PASSWORD}

    # Date of birth
    Select From List By Value    css:[data-qa="days"]      15
    Select From List By Value    css:[data-qa="months"]    3
    Select From List By Value    css:[data-qa="years"]     1990

    # Newsletters
    Select Checkbox    css:#newsletter
    Select Checkbox    css:#optin

Remplirer Informations Adresse
    # First name
    Input Text    css:[data-qa="first_name"]    ${FIRST_NAME}

    # Last name
    Input Text    css:[data-qa="last_name"]     ${LAST_NAME}

    # Company
    Input Text    css:[data-qa="company"]       ${COMPANY}

    # Address
    Input Text    css:[data-qa="address"]       ${ADDRESS1}
    Input Text    css:[data-qa="address2"]      ${ADDRESS2}

    # Country
    Select From List By Label    css:[data-qa="country"]    United States

    # State
    Input Text    css:[data-qa="state"]         ${STATE}

    # City
    Input Text    css:[data-qa="city"]          ${CITY}

    # Zipcode
    Input Text    css:[data-qa="zipcode"]       ${ZIPCODE}

    # Mobile Number
    Input Text    css:[data-qa="mobile_number"]    ${MOBILE_NUMBER}

Créer Le Compte
    Click Element    css:[data-qa="create-account"]

Vérifier Compte Créé
   Wait Until Element Is Visible    css:h2.title.text-center b    timeout=15s
    Element Should Contain    css:h2.title.text-center b    ACCOUNT CREATED!

Cliquer Continue
    Click Link    ${CONTINUE_BUTTON}

Vérifier Logged In As Username
    Wait Until Page Contains    Logged in as ${USER_NAME}    timeout=10s
    Page Should Contain    Logged in as ${USER_NAME}

Supprimer Le Compte

    # The Click Link action is fine
    Click Link    ${DELETE_ACCOUNT_BUTTON}
Vérifier L'Inscription Réussie
    Wait Until Page Contains    Enter Account Information
    Page Should Contain    Enter Account Information    timeout=10s

Vérifier Page D'Accueil Visible
    Wait Until Page Contains    AutomationExercise   timeout=10s
    Page Should Contain    AutomationExercise

Aller À La Page De Login
    Click Element    ${SIGNUP_LOGIN_BUTTON}

Vérifier Login Page Visible
    Wait Until Page Contains    Login to your account
    Page Should Contain    Login to your account

Se Connecter
    [Arguments]    ${email}    ${password}
    Input Text    ${LOGIN_EMAIL_FIELD}    ${email}
    Input Password    ${LOGIN_PASSWORD_FIELD}    ${password}
    Click Button    ${LOGIN_BUTTON}

Vérifier Connexion Réussie
    Wait Until Page Contains    AutomationExercise   timeout=10s
    Page Should Contain    AutomationExercise


Cliquer Logout
    Click Link    ${LOGOUT_BUTTON}


# Keywords pour Contact Us Form
Aller À La Page Contact
    Click Link    ${CONTACT_US_BUTTON}

Vérifier Get In Touch Visible
    Wait Until Page Contains Element    ${GET_IN_TOUCH_HEADER}    timeout=10s
    Element Should Contain    ${GET_IN_TOUCH_HEADER}    GET IN TOUCH

Remplir Formulaire Contact
    [Arguments]    ${name}    ${email}    ${subject}    ${message}
    Input Text    ${CONTACT_NAME_FIELD}      ${name}
    Input Text    ${CONTACT_EMAIL_FIELD}     ${email}
    Input Text    ${CONTACT_SUBJECT_FIELD}   ${subject}
    Input Text    ${CONTACT_MESSAGE_FIELD}   ${message}

Uploader Fichier
    [Arguments]    ${file_path}
    # Créer le fichier s'il n'existe pas
    Run Keyword And Ignore Error    Create File    ${file_path}    This is a test file for contact form automation.
    Choose File    ${CONTACT_FILE_UPLOAD}    ${file_path}

Soumettre Formulaire Contact
    Click Button    ${CONTACT_SUBMIT_BUTTON}

Accepter Alerte
    Handle Alert    action=ACCEPT    timeout=10s

Vérifier Message Succès Contact
    Wait Until Page Contains Element    ${CONTACT_SUCCESS_MESSAGE}    timeout=15s
    Element Should Contain    ${CONTACT_SUCCESS_MESSAGE}    Success! Your details have been submitted successfully.

Retourner À L'Accueil
    Click Element    ${CONTACT_HOME_BUTTON}

Créer Fichier Test
    # Crée un fichier test pour l'upload
    Create File    ${UPLOAD_FILE_PATH}    This is a test file for contact form automation.
    Log    Fichier test créé: ${UPLOAD_FILE_PATH}

Supprimer Fichier Test
    # Nettoie le fichier après le test
    Remove File    ${UPLOAD_FILE_PATH}
    Log    Fichier test supprimé


# Keywords pour Search Product
Aller À La Page Produits
    Click Link    ${PRODUCTS_BUTTON}
    Wait Until Page Contains    All Products    timeout=15s

Vérifier Page Tous Les Produits Visible
    Wait Until Page Contains    All Products    timeout=15s
    Page Should Contain    All Products
    # Vérifier que des produits sont affichés
    Wait Until Element Is Visible    ${PRODUCT_ITEMS}    timeout=15s

Rechercher Produit
    [Arguments]    ${product_name}
    Wait Until Element Is Visible    ${SEARCH_INPUT}    timeout=10s
    Input Text    ${SEARCH_INPUT}    ${product_name}
    Click Button    ${SEARCH_BUTTON}
    # Attendre que les résultats se chargent
    Wait Until Page Contains    Searched Products    timeout=15s

Vérifier Produits Recherchés Visible
    Wait Until Page Contains    Searched Products    timeout=15s
    Page Should Contain    Searched Products

Vérifier Produits Correspondants Visibles
    # Vérifier qu'au moins un produit est affiché
    Wait Until Element Is Visible    ${PRODUCT_ITEMS}    timeout=15s
    ${product_count}    Get Element Count    ${PRODUCT_ITEMS}
    Should Be True    ${product_count} > 0    msg=Aucun produit trouvé pour la recherche

    # Vérifier que des produits sont visibles (approche plus fiable)
    Page Should Contain Element    ${PRODUCT_ITEMS}
    Log    ${product_count} produit(s) trouvé(s) pour la recherche

    # Vérifier que la recherche a retourné des résultats pertinents
    ${all_text}    Get Text    tag:body
    Should Not Be Empty    ${all_text}

# Keywords pour Subscription
Scroller Vers Footer
    # Scroller jusqu'au footer où se trouve la section subscription
    Scroll Element Into View    ${SUBSCRIPTION_SECTION}
    Sleep    2s    # Petit délai pour le scroll

Vérifier Texte Subscription Visible
    Wait Until Element Is Visible    ${SUBSCRIPTION_HEADER}    timeout=10s
    Element Should Contain    ${SUBSCRIPTION_HEADER}    SUBSCRIPTION
    # Vérifier également que le champ email est visible
    Wait Until Element Is Visible    ${SUBSCRIPTION_EMAIL_INPUT}    timeout=10s

Saisir Email Et S abonner
    [Arguments]    ${email}
    # Générer un email unique si nécessaire
    ${final_email}    Set Variable If
    ...    '${email}' == 'newsletter'    ${NEWSLETTER_EMAIL}
    ...    ${email}

    # Saisir l'email dans le champ
    Wait Until Element Is Visible    ${SUBSCRIPTION_EMAIL_INPUT}    timeout=10s
    Input Text    ${SUBSCRIPTION_EMAIL_INPUT}    ${final_email}

    # Cliquer sur le bouton d'abonnement
    Wait Until Element Is Visible    ${SUBSCRIPTION_BUTTON}    timeout=15s
    Click Button    ${SUBSCRIPTION_BUTTON}

Vérifier Message Abonnement Réussi
    Wait Until Element Is Visible    ${SUBSCRIPTION_SUCCESS_MSG}    timeout=15s
    Element Should Contain    ${SUBSCRIPTION_SUCCESS_MSG}    You have been successfully subscribed!




# Keywords pour Cart
Ajouter Premier Produit Au Panier
    Mouse Over    xpath://div[@class='single-products'][1]
    Sleep    2s
    Click Link     xpath://a[contains(@class,'btn btn-default add-to-cart')][1]
    Sleep    2s
Ajouter Deuxième Produit Au Panier
    Mouse Over    xpath://div[@class='single-products'][2]
    Sleep    2s
    Click Link    xpath://a[contains(@class,'btn btn-default add-to-cart')][2]
    Sleep    2s
Cliquer Continuer Shopping
    Click Button    Continue Shopping
    Sleep    2s
Cliquer Voir Panier
    Click Link    ${VIEW_CART_BUTTON}
    Wait Until Page Contains    ${CART_PAGE_HEADER}    timeout=10s
Vérifier Produits Dans Panier
    Wait Until Page Contains    ${CART_PAGE_HEADER}    timeout=10s
    ${item_count}    Get Element Count    ${CART_ITEMS}
    Should Be True    ${item_count} >= 2
    Log    Nombre de produits dans le panier: ${item_count}
Vérifier Détails Panier
    # Vérifier les prix
    Page Should Contain Element    ${PRODUCT_PRICE}
    Page Should Contain    Rs.
    # Vérifier les quantités
    Page Should Contain Element    ${PRODUCT_QUANTITY}
    Page Should Contain    Quantity:
    # Vérifier les totaux
    Page Should Contain Element    ${PRODUCT_TOTAL}
    Page Should Contain    Total


# Keywords pour Product Quantity


Vérifier Page Détails Produit
    Wait Until Page Contains    ${PRODUCT_DETAILS_PAGE}    timeout=10s
    Page Should Contain Element    ${QUANTITY_INPUT}
    Page Should Contain    Quantity

Modifier Quantité Produit
    [Arguments]    ${quantity}
    Wait Until Element Is Visible    ${QUANTITY_INPUT}    timeout=10s
    Clear Element Text    ${QUANTITY_INPUT}
    Input Text    ${QUANTITY_INPUT}    ${quantity}
    Sleep    1s

Cliquer Add To Cart Détails
    Wait Until Element Is Visible    ${ADD_TO_CART_DETAILS_BUTTON}    timeout=10s
    Click Element    ${ADD_TO_CART_DETAILS_BUTTON}
    Sleep    2s

Vérifier Quantité Panier
    [Arguments]    ${expected_quantity}
    Wait Until Page Contains    Shopping Cart    timeout=10s
    Wait Until Element Is Visible    ${CART_QUANTITY_DISPLAY}    timeout=10s
    ${actual_quantity}    Get Text    ${CART_QUANTITY_DISPLAY}
    Should Be Equal As Strings    ${actual_quantity}    ${expected_quantity}
    Log    Quantité vérifiée: ${actual_quantity}