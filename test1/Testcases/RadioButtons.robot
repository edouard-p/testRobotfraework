*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://itera-qa.azurewebsites.net/home/automation

*** Test Cases ***
Testing radio buttons and checkboxes

    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed    2seconds


#Pour le keyword select radio button, nous devons spécifier le nom du bouton radio (ici "optionsRadios") et sa valeur (option1).
    select radio button     optionsRadios   option1

#Pour le keyword select checkbox, nous devons spécifier l'id de la checkbox' (ici "thursday et saturday").
    select checkbox    thursday
    select checkbox    saturday
    unselect checkbox    thursday

    close browser