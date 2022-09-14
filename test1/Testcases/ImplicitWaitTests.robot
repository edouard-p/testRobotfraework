*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
RegisterTest
    open browser    https://demowebshop.tricentis.com/register  chrome
    maximize browser window
    ${implicittime}=    get selenium implicit wait
    log to console    ${implicittime}
    set selenium implicit wait  10 seconds    #cela permet d'attendre au maximum 10 secondes avant de faire tomber le test en erreur si un élément n'est pas trouvé. Cette methode marchera pour chaque pas de tests.
    select radio button    Gender   M
    input text    FirstName     John
    input text    LastName      Joe
    input text    Email     john@joe.fr
    input text    Password      JohnJoe
    input text    ConfirmPassword   JohnJoe
    ${implicittime}=    get selenium implicit wait
    log to console    ${implicittime}
    close browser
