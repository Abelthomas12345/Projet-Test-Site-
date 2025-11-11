.. code:: Page d'acceuil

*** Settings ***
Library  SeleniumLibrary   timeout=60s


Resource  ../variables.robot

*** Keywords ***
Charger_directement_la_page_Amazon

    Go To  ${URL_Navigate}

    Wait Until Page Contains Element  xpath:/html/body/div[2]/div[4]/form/div[1]/div[1]/div[3]/center/input[1]  timeout=30s

    #Clear Element Text  xpath:/html/body/div[2]/div[4]/form/div[1]/div[1]/div[3]/center/input[1]
    
    Input Text  id=APjFqb  Amazon

    Mouse Down    class=lnXdpd

    Mouse Up    class=lnXdpd

    Click Button    xpath:/html/body/div[2]/div[4]/form/div[1]/div[1]/div[3]/center/input[1]

    Wait Until Page Contains  Images  timeout=110s

    Click Element  xpath://*[@id="rso"]/div[1]/div/div/div/div/div/div/div/div[1]/div/span/a/div/div/div/div[2]/cite

    Wait Until Page Contains    Ventes

    Log  La page Amazon a été chargée avec succès.

    Capture Page Screenshot  page_acceuil_amazon.png

Rechercher_un_produit

    Log  Début de la recherche du produit.

    Click Element  xpath://*[@id="twotabsearchtextbox"]

    #Clear Element Text  name="field-keywords"

    Input Text  xpath://*[@id="twotabsearchtextbox"]  ordinateur

    Click Element  xpath://*[@id="nav-search-submit-button"]

    Click Button    xpath://*[@id="sp-cc-accept"]

    Wait Until Page Contains  ordinateur  timeout=10s

    Scroll Element Into View    xpath://*[@id="navBackToTop"]/div

    Sleep    10s

    Log  La recherche du produit a été effectuée avec succès.

     Capture Page Screenshot  resultat_de_la_recherche.png

Ajouter_un_produit_au_panier
    Click Element  xpath://*[@id="533b9dab-ccdf-4a24-887e-8eae50618b41"]/div/div/div/div/span/div/div/div[2]  
    
    Wait Until Page Contains  Ajouter au panier

    Click Element  xpath://*[@id="hard_disk_size_0"]/span/input

    Click Button  xpath://*[@id="add-to-cart-button"]
