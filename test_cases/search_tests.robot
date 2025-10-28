*** Settings ***
Library    SeleniumLibrary
Documentation    Test de recherche de produits
Test Teardown    Close Browser
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

*** Test Cases ***
Test Case 9: Search Product
    [Tags]    9    search    smoke
    [Documentation]    Test de recherche de produits
    # 1. Launch browser
    # 2. Navigate to url 'http://automationexercise.com'
    Ouvrir Le Site Automation Exercise
    # 3. Verify that home page is visible successfully
    Vérifier Page D'Accueil Visible
    Log    Étape 3: Page d'accueil visible
    # 4. Click on 'Products' button
    Aller À La Page Produits
    Log    Étape 4: Bouton Products cliqué
    # 5. Verify user is navigated to ALL PRODUCTS page successfully
    Vérifier Page Tous Les Produits Visible
    Log    Étape 5: Page ALL PRODUCTS vérifiée
    # 6. Enter product name in search input and click search button
    Rechercher Produit    ${SEARCH_PRODUCT}
    Log    Étape 6: Recherche effectuée pour: ${SEARCH_PRODUCT}
    # 7. Verify 'SEARCHED PRODUCTS' is visible
    Vérifier Produits Recherchés Visible
    Log    Étape 7: SEARCHED PRODUCTS visible
    # 8. Verify all the products related to search are visible
    Vérifier Produits Correspondants Visibles
    Log    Étape 8: Produits correspondants vérifiés
    Log    TEST RECHERCHE PRODUIT RÉUSSI!
    Capture Page Screenshot    test9_search_product.png