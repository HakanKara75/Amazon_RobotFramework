*** Settings ***
Library    SeleniumLibrary
Library    Screenshot
Variables     ../locators/webElements.py
Variables    ../data/data.py


*** Keywords ***
Go To Tesla Homepage
    Open Browser    ${Data.TESLA_HOME_PAGE_URL}    chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    
Go To Account Page
    Click Element    ${TeslaLocators.ACCOUNT_LINK}
    Take Screenshot
    Sleep    10
    
Login To Tesla
    Input Text    ${TeslaLocators.EMAIL}    ${Data.Email}
    Click Element    ${TeslaLocators.NEXT}
    Input Text    ${TeslaLocators.PASSWORD}    ${Data.Password}
    Click Element    ${TeslaLocators.SIGN_IN}


