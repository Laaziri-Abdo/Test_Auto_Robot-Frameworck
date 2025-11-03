*** Variables ***
# Utilisateurs valides
${VALID_NAME}                abdo laaziri
${VALID_EMAIL}               abdolaaziri@example.com
${VALID_PASSWORD}            12345678
${VALID_FIRST_NAME}          John
${VALID_LAST_NAME}           Doe
${VALID_COMPANY}             Test Company
${VALID_ADDRESS1}            123 Test Street
${VALID_ADDRESS2}            Apt 4B
${VALID_COUNTRY}             United States
${VALID_STATE}               California
${VALID_CITY}                Los Angeles
${VALID_ZIPCODE}             90001
${VALID_MOBILE}              +1234567890

# Utilisateurs invalides
${INVALID_EMAIL}             invalid-email
${INVALID_PASSWORD}          short
${INVALID_NAME}              ${EMPTY}
${INVALID_MOBILE}            abcdefg

# Données de test
${NEW_USER_NAME}             New Test User
${NEW_USER_EMAIL_PREFIX}     newuser