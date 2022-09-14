*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
RegisterTest

    #Pour connaitre la vitesse par défait d'exécution des étapes :
    ${speed}=   get selenium speed
    log to console    ${speed}
    open browser    https://demowebshop.tricentis.com/register  chrome
    maximize browser window
    #pour le keyword "sleep", il s'agit de secondes (3 secondes).
    sleep    3
    #
    #"set selenium speed" permet de fixer une durée de temps avent chanque action
    set selenium speed    0.5 second
    select radio button    Gender   M
    input text    FirstName     John
    input text    LastName      Joe
    input text    Email     john@joe.fr
    input text    Password      JohnJoe
    input text    ConfirmPassword   JohnJoe
    close browser
    ${speed}=   get selenium speed
    log to console    ${speed}