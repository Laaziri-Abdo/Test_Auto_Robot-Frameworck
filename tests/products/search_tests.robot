*** Settings ***
Resource    ../../resources/keywords/common_keywords.robot
Resource    ../../resources/keywords/product_keywords.robot
Resource    ../../resources/variables/product_variables.robot
Test Setup     Open Browser To Home Page
Test Teardown  Run Keywords    Take Screenshot On Failure    AND    Close Browser Session

*** Test Cases ***
Search Existing Product
    [Documentation]    Recherche d'un produit existant
    [Tags]    search    smoke
    Go To Products Page
    Search Product    ${PRODUCT_1}
    Verify Product Search Results    ${PRODUCT_1}

Search Non Existing Product
    [Documentation]    Recherche d'un produit qui n'existe pas
    [Tags]    search    negative
    Go To Products Page
    Search Product    NonExistingProduct123
    Verify No Search Results