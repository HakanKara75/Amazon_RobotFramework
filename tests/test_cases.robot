*** Settings ***
Library     SeleniumLibrary
Resource    ../pages/AmazonPage.robot

#Suite Setup     setUpWeb    //tum senaryolardan once sadece 1 kez calisacak. toplamda 1 kez
#Suite Teardown     tearDown     //tum senaryolardan sonra sadece 1 kez calisacak. toplamda 1 kez

Test Setup     setUpWeb     #her senaryodan once 1 kez calisacak
Test Teardown     tearDown     #her senaryodan sonra 1 kez calisacak


*** Test Cases ***
Product_Test
    #"Robot Framework Book Test Automation" urununu arar
    Search Product    Robot Framework Book Test Automation
    Click Firts Result
    Go to help page

Price Verification
    Go to Elektronik