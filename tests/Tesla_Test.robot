*** Settings ***
Library      SeleniumLibrary
Resource      ../pages/TeslaPage.robot


*** Test Cases ***
Test Tesla Account Page
    Go To Tesla Homepage
    Go To Account Page
    Login To Tesla