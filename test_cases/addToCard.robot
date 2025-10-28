*** Settings ***
Library    SeleniumLibrary
Documentation    Test Case 12: Add Products in Cart
Test Teardown    Close Browser
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot


*** Test Cases ***
Test Case 12: Add Products in Cart
    [Tags]    12    cart    smoke
    [Documentation]    Ajouter des produits au panier et vérifier
    Ouvrir Le Site Automation Exercise
    Vérifier Page D'Accueil Visible
    Log    Étape 3: Page d'accueil vérifiée
    Aller À La Page Produits
    Log    Étape 4: Page produits atteinte
    Ajouter Premier Produit Au Panier
    Log    Étape 5: Premier produit ajouté
    Log    Étape 6: Continue Shopping cliqué
    Ajouter Deuxième Produit Au Panier
    Log    Étape 7: Deuxième produit ajouté
    Cliquer Voir Panier
    Log    Étape 8: View Cart cliqué
    Vérifier Produits Dans Panier
    Log    Étape 9: Produits vérifiés dans le panier
    Vérifier Détails Panier
    Log    Étape 10: Détails du panier vérifiés
    Log    ✅ TEST CASE 12: ADD PRODUCTS IN CART - RÉUSSI
    Capture Page Screenshot    test12_cart.png