*** Settings ***
Resource   common_keywords.robot
Resource   ../variables/selector_variables.robot
Resource   ../variables/message_variables.robot
Resource   ../variables/product_variables.robot

*** Keywords ***
Go To Products Page
    [Documentation]    Navigue vers la page produits
    Wait And Click    ${PRODUCTS_MENU}
    Verify Page Contains    All Products

Search Product
    [Documentation]    Recherche un produit par nom
    [Arguments]    ${product_name}
    Wait And Input Text    ${SEARCH_FIELD}    ${product_name}
    Wait And Click    ${SEARCH_BUTTON}
    Verify Page Contains    Searched Products

Verify Product Search Results
    [Documentation]    Vérifie que le produit recherché est affiché
    [Arguments]    ${expected_product}
    Page Should Contain    ${expected_product}
    ${product_count}    Get Element Count    ${PRODUCT_CARD}
    Should Be True    ${product_count} > 0

Verify No Search Results
    [Documentation]    Vérifie qu'aucun résultat n'est trouvé
    Page Should Contain    ${SEARCH_ERROR_MSG}

Add Product To Cart From Homepage
    [Documentation]    Ajoute un produit spécifique au panier depuis l'accueil
    [Arguments]    ${product_name}
    Mouse Over    xpath://p[contains(text(), '${product_name}')]/..
    Wait And Click    xpath://p[contains(text(), '${product_name}')]/..//a[contains(@class, 'add-to-cart')]
    Wait Until Page Contains    ${PRODUCT_ADDED_MSG}

Continue Shopping
    [Documentation]    Continue les achats après ajout au panier
    Wait And Click    ${CONTINUE_SHOPPING_BTN}