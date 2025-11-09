.. code:: Page d'acceuil

*** Settings ***
Library  SeleniumLibrary

Resource  ../variables.robot

*** Keywords ***
Ouvrir_google
    Go To  ${URL_Navigate}

    Wait Until Page Contains  Google

Charger_la_page_Amazon
    Clear Element Text  xpath://*[@id="APjFqb"]

    Input Text  xpath://*[@id="APjFqb"]  kikuu

    #Mouse Down  xpath:/html/body/div[2]/div[3]/div

    #Mouse Up  /html/body/div[2]/div[3]/div

    Click Element  xpath:/html/body/div[2]/div[4]/form/div[1]/div[1]/div[3]/center/input[1]

    Wait Until Page Contains Images

    Click Link xpath://*[@id="_oWEQadGNAZOTwbkPsbLSoAQ_44"]
Rechercher_un_produit
    Click Element  name="field-keywords"
    Clear Element Text  name="field-keywords"
    Input Text  name="field-keywords"  ordinateur
    Click Element  xpath://*[@id="nav-search-submit-button"]
    Wait Until Page Contains  ordinateur
