*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Completed
[Agruments]  ${search}
    Wait Until Page Contains  results for  ${search}

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    Click Link  css=#result_0 a.s-access-detail-page
