*** Settings ***
Resource   common_keywords.robot
Resource   ../variables/selector_variables.robot
Resource   ../variables/message_variables.robot

*** Keywords ***
Go To Cart Page
    [Documentation]    Navigue vers la page panier
    Wait And Click    ${CART_MENU}
    Verify Page Contains    Shopping Cart

Verify Product In Cart
    [Documentation]    Vérifie qu'un produit est dans le panier
    [Arguments]    ${product_name}
    Page Should Contain    ${product_name}
    ${item_count}    Get Element Count    ${CART_TABLE} tr
    Should Be True    ${item_count} > 1

Verify Cart Is Empty
    [Documentation]    Vérifie que le panier est vide
    Page Should Contain    ${EMPTY_CART_MSG_TEXT}
    Page Should Contain Element    ${EMPTY_CART_MSG}

Remove Product From Cart
    [Documentation]    Supprime un produit du panier
    Wait And Click    ${CART_DELETE_ITEM}
    Sleep    2s