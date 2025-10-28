*** Settings ***
Library    SeleniumLibrary
Documentation    Test Case 13: Verify Product quantity in Cart
Test Teardown    Close Browser
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

*** Test Cases ***
Test Case 13: Verify Product quantity in Cart
    [Tags]    13    quantity    smoke
    [Documentation]    Vérifier la quantité de produit dans le panier

    # 1-3. Ouvrir le site et vérifier
    Ouvrir Le Site Automation Exercise
    Vérifier Page D'Accueil Visible

    # 4. Cliquer sur View Product
    Aller À La Page Produits
    Log    Étape 4: View Product cliqué

    # 5. Vérifier les détails produit
    Vérifier Page Détails Produit
    Log    Étape 5: Page détails produit vérifiée

    # 6. Augmenter quantité à 4
    Modifier Quantité Produit    4
    Log    Étape 6: Quantité modifiée à 4

    # 7. Cliquer Add to cart
    Cliquer Add To Cart Détails
    Log    Étape 7: Add to cart cliqué

    # 8. Cliquer View Cart
    Cliquer Voir Panier
    Log    Étape 8: View Cart cliqué

    # 9. Vérifier quantité exacte
    Vérifier Quantité Panier    4
    Log    Étape 9: Quantité 4 vérifiée dans le panier

    Log    ✅ TEST CASE 13: VERIFY PRODUCT QUANTITY - RÉUSSI
    Capture Page Screenshot    test13_quantity.png