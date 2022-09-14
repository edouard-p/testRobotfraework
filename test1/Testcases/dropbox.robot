*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
${browser}  chrome

*** Test Cases ***
Handeling dropdowns and list boxes

    open browser    ${url}  ${browser}
    maximize browser window
    sleep    3seconds
    #wait until element is visible    /html/body/div[4]/div[2]/div[1]/div[2]/div[2]/button[1]
    #${boutoncookie}=    element should be visible   css:.fc-cta-consent > .fc-button-label
    #IF    ${boutoncookie}
    #IF  css:.fc-cta-consent > .fc-button-label
    #IS VISIBLE
    #Then
    click element    css:.fc-cta-consent > .fc-button-label
    #END

    click element    id:banner-accept
#Deux paramètres pour ce keyword : 1)id ou name 2)value (cela n'est pas possible ici car le dropdown de ce site n'a pas d'id ou de name)
    select from list by label   continents   Europe
#Même principe sauf que le deuxième paramètre correspond au numéro de l'option choisie (en commençant par 0)
    select from list by index    continents     2
    #select from list by value    continents     *value*

# pour les list boxs, même principe
    select from list by label    selenium_commands  Wait Commands
    select from list by label    selenium_commands  WebElement Commands

    unselect from list by index    selenium_commands    3

    #close browser