.. code:: se fichier est pour déclarer les keywords redondants comme l'ouverture et la fermeture du navigateur.

*** Settings ***

Library  SeleniumLibrary

# appel de la Ressource variables.robot qui contient toutes nos variables
Resource  variables.robot

*** Keywords ***

ouverture_du_navigateur
    Open Browser  about:blank  ${Browser_Name}
    
    Maximize Browser Window

Fermeture_du_navigateur
    Close Browser