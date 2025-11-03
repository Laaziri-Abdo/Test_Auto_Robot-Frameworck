*** Settings ***
Resource    ../../resources/keywords/common_keywords.robot
Resource    ../../resources/keywords/authentication_keywords.robot
Resource    ../../resources/keywords/product_keywords.robot
Resource    ../../resources/keywords/cart_keywords.robot
Resource    ../../resources/variables/user_variables.robot
Resource    ../../resources/variables/product_variables.robot
Test Setup     Open Browser To Home Page
Test Teardown  Run Keywords    Take Screenshot On Failure    AND    Close Browser Session

*** Test Cases ***
Smoke Test - Navigation And Pages
    [Documentation]    Test smoke de navigation et pages principales
    [Tags]    smoke
    # Page d'accueil
    Page Should Contain Element    ${HEADER_LOGO}

    # Navigation produits
    Go To Products Page
    Verify Page Contains    All Products

    # Recherche produit
    Search Product    ${PRODUCT_1}
    Verify Product Search Results    ${PRODUCT_1}

    # Page panier
    Go To Cart Page
    Verify Page Contains    Shopping Cart

    # Page login
    Go To Login Page
    Verify Page Contains    Login to your account

Smoke Test - User Functionality
    [Documentation]    Test smoke des fonctionnalités utilisateur
    [Tags]    smoke
    # Connexion
    Go To Login Page
    Login With Credentials    ${VALID_EMAIL}    ${VALID_PASSWORD}
    Verify Successful Login

    # Ajout au panier
    Add Product To Cart From Homepage    ${PRODUCT_1}
    Continue Shopping

    # Vérification panier
    Go To Cart Page
    Verify Product In Cart    ${PRODUCT_1}

    # Déconnexion
    Logout User