.. code:: robotframework
*** Settings ***
Documentation     Simple example using SeleniumLibrary.

Library  SeleniumLibrary

Resource  ../ressources/commandes.robot
Resource  ../ressources/PO/PageAcceuil.robot

Suite Setup  commandes.ouverture_du_navigateur
Suite Teardown  commandes.Fermeture_du_navigateur

*** Test Cases ***
Main Test
    Charger_directement_la_page_Amazon
    Rechercher_un_produit
    Ajouter_un_produit_au_panier
