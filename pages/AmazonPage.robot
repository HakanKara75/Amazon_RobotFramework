*** Settings ***
Library     SeleniumLibrary
Variables    ../locators/locators.py

*** Variables ***
${AMAZON_URL}      https://www.amazon.com/ref=nav_logo

*** Keywords ***
setUpWeb
    #Amazon anasayfayi ac
    Open Browser     ${AMAZON_URL}    chrome
    Maximize Browser Window
    Sleep    5

tearDown
    Close All Browsers

Search Product
    [Arguments]     ${product_name}
    #urun adi girilecek
    Input Text    ${AmazonLocators.SEARCH_BOX}     ${product_name}
    #Arama butonuna tikla
    Click Element    ${AmazonLocators.SEARCH_BUTTON}
    ${actual} =    Get Text    ${AmazonLocators.RESULT}
    Log   ${actual}
    #expected ve actula text assert et
    ${expected_text}     Set Variable     Robot Framework Book Test Automation
    Should Contain    ${actual}     ${expected_text}


Click Firts Result
    #ilk urune tiklar
    Click Element    ${AmazonLocators.FIRST_PRODUCT}

Go to help page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Element       ${AmazonLocators.HELP_BUTTON}
    Sleep    3
    #sayfanin gercek basligini alir
    ${actual_title}    Get Title
    # Beklenen sayfa başlığı
    ${expected_title}    Set Variable     Help & Contact Us - Amazon Customer Service
    Title Should Be     ${expected_title}
    Log    ${actual_title}
    Log     ${expected_title}
     Sleep    3

Go to Elektronik
    Click Element    ${AmazonLocators.ALL}
    Click Element    ${AmazonLocators.ELEKTRONIK}
    Sleep    3
    Click Element    ${AmazonLocators.CAMERA}
    Sleep    3
    #arama sonuclarini liste olarak aliriz
    @{products}      Get WebElements    ${AmazonLocators.TRIMMER_LIST}
    #urun listesini dongu ile yazdiracagiz
    FOR    ${product}      IN      @{products}
    Log     ${product.text}
    END

    #urun listesini ${products} degiskeni olarak tanimlayip size aldik
    ${products_size}     Get Length    ${products}
    Log    ${products_size}
