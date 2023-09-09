*** Settings ***
Library     SeleniumLibrary
Resource    ../pages/AddToCart.robot

*** Test Cases ***
Add_Cart
    Open Amazon Page
    Search Product       cgid sunglasses
    Add to Cart