*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
RegisterTest
    open browser    https://demowebshop.tricentis.com/register  chrome
    maximize browser window
    ${time}=    get selenium timeout
    log to console    ${time}
    #Si l'on veut vérifier qqch sur une page, on peut utiliser la methode "wait until page contains"
    wait until page contains    Register
    #le timeout par defaut est de 5 secondes, pour le changer, on peut utiliser la methode "set selenium set selenium timeout"
    set selenium timeout    8 seconds
    wait until page contains    Register
    select radio button    Gender   M
    input text    FirstName     John
    input text    LastName      Joe
    input text    Email     john@joe.fr
    input text    Password      JohnJoe
    input text    ConfirmPassword   JohnJoe
    ${time}=    get selenium timeout
    log to console    ${time}
    close browser
