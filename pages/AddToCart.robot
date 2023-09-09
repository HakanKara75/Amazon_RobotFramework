*** Settings ***
Library     SeleniumLibrary
Variables    ../locators/locators.py

*** Variables ***
${AMAZON_URL}      https://www.amazon.com

*** Keywords ***
Open Amazon Page
    #Amazon anasayfayi ac
    Open Browser     ${AMAZON_URL}    chrome
    Maximize Browser Window
    Sleep    7

Search Product
        [Arguments]     ${product_name}
        #urun adi girilecek
        Input Text    ${AmazonLocators.SEARCH_BOX}     ${product_name}
        #Arama butonuna tikla
        Click Element    ${AmazonLocators.SEARCH_BUTTON}

Select Product
    Click Element    ${AmazonLocators.FIRST_SUNGLASSES}

Add to Cart
    Click Element     ${AmazonLocators.ADD_TO_CART}
    Sleep    5
    Close Browser
        