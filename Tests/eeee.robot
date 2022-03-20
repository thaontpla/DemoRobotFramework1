*** Settings ***
Documentation  These are some web tests
Resource  ../Resources/Web/Common.robot
Resource  ../Resources/Web/AmazonApp.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  Ferrari 555

*** Test Cases ***
Logged out user can search for products
    [Tags]  Web
    Search for Products

Logged out user can add product to cart
    [Tags]  Web1
    Search for the Products
    Select Product from Search Results
    Add Product to Cart
