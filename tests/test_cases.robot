*** Settings ***
Library     SeleniumLibrary
Resource    ../pages/AmazonPage.robot

*** Test Cases ***
Product_Test
    Open Amazon Page
    #"Robot Framework Book Test Automation" urununu arar
    Search Product    Robot Framework Book Test Automation
    Click Firts Result
    Go to help page

Price Verification
    Open Amazon Page
    Go to Elektronik