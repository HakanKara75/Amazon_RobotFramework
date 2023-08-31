*** Settings ***
Library     SeleniumLibrary
Variables    ../locators/locators.py

*** Variables ***
${AMAZON_URL}      https://www.amazon.com.tr

*** Keywords ***
Open Amazon Page
    #Amazon anasayfayi ac
    Open Browser     ${AMAZON_URL}    chrome
    Maximize Browser Window

Search Product
    [Arguments]     ${product_name}
    #urun adi girilecek
    Input Text    ${AmazonLocators.SEARCH_BOX}     ${product_name}
    #Arama butonuna tikla
    Click Element    ${AmazonLocators.SEARCH_BUTTON}
    ${actual}     Get Text    ${AmazonLocators.FIRST_RESULT}
    #expected ve actula text assert et
    ${expected_text}     Set Variable     Robot Framework Book Test Automation
    Should Be Equal As Strings    ${expected_text}    ${actual}


Click Firts Result
    #ilk urune tiklar
    Click Element    ${AmazonLocators.FIRST_RESULT}
    