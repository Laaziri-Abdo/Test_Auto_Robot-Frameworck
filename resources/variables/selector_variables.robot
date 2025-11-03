*** Variables ***
# Navigation
${HEADER_LOGO}               css:.logo
${NAV_MENU}                  css:.nav.navbar-nav
${HOME_MENU}                 css:[href='/']
${PRODUCTS_MENU}             css:[href='/products']
${CART_MENU}                 css:[href='/view_cart']
${LOGIN_MENU}                css:[href='/login']
${LOGOUT_MENU}               css:[href='/logout']
${DELETE_ACCOUNT_MENU}       css:[href='/delete_account']
${CONTACT_MENU}              css:[href='/contact_us']

# Login/Register
${LOGIN_EMAIL_FIELD}         css:[data-qa='login-email']
${LOGIN_PASSWORD_FIELD}      css:[data-qa='login-password']
${LOGIN_BUTTON}              css:[data-qa='login-button']
${SIGNUP_NAME_FIELD}         css:[data-qa='signup-name']
${SIGNUP_EMAIL_FIELD}        css:[data-qa='signup-email']
${SIGNUP_BUTTON}             css:[data-qa='signup-button']

# Products
${SEARCH_FIELD}              css:#search_product
${SEARCH_BUTTON}             css:#submit_search
${PRODUCT_CONTAINER}         css:.features_items
${PRODUCT_CARD}              css:.product-image-wrapper
${ADD_TO_CART_BUTTON}        css:.add-to-cart
${VIEW_PRODUCT_LINK}         css:[href*='/product_details/']
${PRODUCT_QUANTITY}          css:#quantity

# Cart
${CART_TABLE}                css:#cart_info_table
${CART_QUANTITY}             css:.cart_quantity
${PROCEED_CHECKOUT_BTN}      css:.check_out
${CONTINUE_SHOPPING_BTN}     css:.btn-success
${EMPTY_CART_MSG}            css:.empty_cart
${CART_DELETE_ITEM}          css:.cart_quantity_delete