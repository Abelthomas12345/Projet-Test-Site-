*** Settings ***
Library  SeleniumLibrary   timeout=60s


#Resource  ../variables.robot

*** Keywords ***
Rechercher_un_produit

    Log  Début de la recherche du produit.

    Click Button    xpath://*[@id="sp-cc-accept"]

    Click Element  xpath://*[@id="twotabsearchtextbox"]

    #Clear Element Text  name="field-keywords"

    Input Text  xpath://*[@id="twotabsearchtextbox"]  ordinateur

    Click Element  xpath://*[@id="nav-search-submit-button"]

    Click Element    xpath://*[@id="a-autoid-2"]/span/i

    Wait Until Page Contains  ordinateur  timeout=10s

    #Scroll Element Into View    xpath://*[@id="navBackToTop"]/div

    Sleep    10s

    Log  La recherche du produit a été effectuée avec succès.

    Capture Page Screenshot  resultat_de_la_recherche.png

Ajouter_un_produit_au_panier

    Click Element    xpath://*[@id="p_123/241862"]/span/a/div/label/i

    Wait Until Page Contains  xpath://*[@id="p_123/241862"]/span/a/span  timeout=110s

    Click Element  xpath://*[@id="anonCarousel2"]/ol/li[1]/div/div/div/span/div/div/div[2]/span/a/div/img

    Wait Until Page Contains  Ajouter au panier

    Click Element  xpath://*[@id="hard_disk_size_0"]/span/input

    Click Button  xpath://*[@id="add-to-cart-button"]

    Wait Until Page Contains    Ajouté au panier

    Capture Page Screenshot    produit_ajouté_au_panier

