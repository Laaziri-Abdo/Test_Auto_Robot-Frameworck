*** Settings ***
Resource    ../../resources/keywords/common_keywords.robot
Resource    ../../resources/keywords/product_keywords.robot
Resource    ../../resources/keywords/cart_keywords.robot
Resource    ../../resources/variables/product_variables.robot
Test Setup     Open Browser To Home Page
Test Teardown  Run Keywords    Take Screenshot On Failure    AND    Close Browser Session

*** Test Cases ***
Add Product To Cart
    [Documentation]    Ajout d'un produit au panier depuis la page d'accueil
    [Tags]    cart    smoke
    Add Product To Cart From Homepage    ${PRODUCT_1}
    Continue Shopping

Verify Product In Cart
    [Documentation]    Vérification qu'un produit ajouté est dans le panier
    [Tags]    cart
    Add Product To Cart From Homepage    ${PRODUCT_1}
    Go To Cart Page
    Verify Product In Cart    ${PRODUCT_1}

Remove Product From Cart
    [Documentation]    Suppression d'un produit du panier
    [Tags]    cart
    Add Product To Cart From Homepage    ${PRODUCT_1}
    Go To Cart Page
    Remove Product From Cart
    Verify Cart Is Empty