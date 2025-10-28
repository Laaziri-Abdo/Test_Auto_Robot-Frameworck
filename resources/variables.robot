*** Variables ***
# URLs
${URL_HOME}    https://automationexercise.com
${URL_LOGIN}    https://automationexercise.com/login

# Navigateur
${BROWSER}    chrome

# Sélecteurs
${SIGNUP_LOGIN_BUTTON}    css:a[href="/login"]
${SIGNUP_NAME_FIELD}      css:[data-qa="signup-name"]
${SIGNUP_EMAIL_FIELD}     css:[data-qa="signup-email"]
${SIGNUP_BUTTON}          css:[data-qa="signup-button"]
${DELETE_ACCOUNT_BUTTON}  css:a[href="/delete_account"]
${CONTINUE_BUTTON}        css:a[data-qa="continue-button"]
${LOGOUT_BUTTON}          css:a[href="/logout"]

# Sélecteurs - Login
${LOGIN_EMAIL_FIELD}      css:[data-qa="login-email"]
${LOGIN_PASSWORD_FIELD}   css:[data-qa="login-password"]
${LOGIN_BUTTON}           css:[data-qa="login-button"]

# Sélecteurs - Messages
${ACCOUNT_CREATED_MSG}    css:h2.title.text-center b
${LOGGED_IN_AS}           css:.fa-user + b
${LOGIN_ERROR_MSG}        css:.login-form p

# Sélecteurs - Contact Us
${CONTACT_US_BUTTON}              css:a[href="/contact_us"]
${GET_IN_TOUCH_HEADER}            css:.contact-form h2
${CONTACT_NAME_FIELD}             css:[data-qa="name"]
${CONTACT_EMAIL_FIELD}            css:[data-qa="email"]
${CONTACT_SUBJECT_FIELD}          css:[data-qa="subject"]
${CONTACT_MESSAGE_FIELD}          css:[data-qa="message"]
${CONTACT_FILE_UPLOAD}            css:[name="upload_file"]
${CONTACT_SUBMIT_BUTTON}          css:[data-qa="submit-button"]
${CONTACT_SUCCESS_MESSAGE}        css:.status.alert.alert-success
${CONTACT_HOME_BUTTON}            css:.btn-success

# Sélecteurs - Search Product
${PRODUCTS_BUTTON}                css:a[href="/products"]
${ALL_PRODUCTS_HEADER}            css:.title.text-center
${SEARCH_INPUT}                   css:#search_product
${SEARCH_BUTTON}                  css:#submit_search
${SEARCHED_PRODUCTS_HEADER}       css:.title.text-center
${PRODUCT_ITEMS}                  css:.single-products
${PRODUCT_NAMES}                  css:p:first-child

# Sélecteurs - Subscription
${SUBSCRIPTION_SECTION}           css:.single-widget
${SUBSCRIPTION_HEADER}            css:.single-widget h2
${SUBSCRIPTION_EMAIL_INPUT}       css:#susbscribe_email
${SUBSCRIPTION_BUTTON}            css:#subscribe
${SUBSCRIPTION_SUCCESS_MSG}       css:.alert-success

# Sélecteurs - Cart
${PRODUCTS_BUTTON}                css:a[href="/products"]
${PRODUCT_CARD}                   css:.single-products
${ADD_TO_CART_BUTTON}             css:a.add-to-cart
${CONTINUE_SHOPPING_BUTTON}       css:button.close-modal
${VIEW_CART_BUTTON}               View Cart
${CART_PAGE_HEADER}               Shopping Cart
${CART_ITEMS}                     css:.cart_item
${PRODUCT_PRICE}                  css:.cart_price
${PRODUCT_QUANTITY}               css:.cart_quantity
${PRODUCT_TOTAL}                  css:.cart_total

# Sélecteurs - Product Quantity
${VIEW_PRODUCT_BUTTON}            xpath://a[contains(text(),'View Product')]
${PRODUCT_DETAILS_PAGE}           Write Your Review
${QUANTITY_INPUT}                 id:quantity
${ADD_TO_CART_DETAILS_BUTTON}     xpath://button[contains(text(),'Add to cart')]
${CART_QUANTITY_DISPLAY}          css:.cart_quantity button

# Données - Subscription
${NEWSLETTER_EMAIL}               abdolaaziri@gmail.com
${NEWSLETTER_EMAIL_PREFIX}

# Données de test
${USER_NAME}              Abdo Laaziri
${PASSWORD}               Abdo@12345
${USER_EMAIL_LOGIN}       laaziri@gmail.com
${INVALID_EMAIL}          invalid@test.com
${INVALID_PASSWORD}       WrongPassword123
${FIRST_NAME}             Abdo
${LAST_NAME}              Laaziri
${COMPANY}                Maroc
${ADDRESS1}               casablanca
${ADDRESS2}               Apt 4B
${STATE}                  casablanca
${CITY}                   casa
${ZIPCODE}                12121
${MOBILE_NUMBER}          1234567890

# Données - Contact Us
${CONTACT_NAME}                   Abdo Laaziri
${CONTACT_EMAIL}                  laaziri@test.com
${CONTACT_SUBJECT}                test test
${CONTACT_MESSAGE}                hello test .
${UPLOAD_FILE_PATH}               ${CURDIR}${/}test_file.txt

# Données - Search Product
${SEARCH_PRODUCT}                 Blue Top
${SEARCH_DRESS}                   Dress
${SEARCH_TSHIRT}                  T-Shirt
${SEARCH_MEN}                     Men