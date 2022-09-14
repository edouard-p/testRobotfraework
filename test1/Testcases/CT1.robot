*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://playsharper.com/
${browser}  chrome
${username}     eperes@henix.fr
${password}     Azerty1

*** Test Cases ***
Login test
 #   create webdriver   chrome   executable_path="C:\webdrivers\chromedriver.exe"
    open browser    ${url}    ${browser}
    login playsharper
    wait until element is visible    //*[@id="main-content"]/div/ion-content/ion-grid[1]/ion-row/ion-col[1]/div/div/ion-row/ion-col/ion-button/ion-label
    click element    //*[@id="main-content"]/div/ion-content/ion-grid[1]/ion-row/ion-col[1]/div/div/ion-row/ion-col/ion-button/ion-label
    sleep   3
    #close browser

*** Keywords ***
login playsharper
    maximize browser window
    wait until element is enabled    //*[@id="app"]/ion-app/ion-split-pane/ion-menu/ion-content/ion-button/ion-label
    click element    //*[@id="app"]/ion-app/ion-split-pane/ion-menu/ion-content/ion-button/ion-label
    wait until element is enabled    //*[@id="app"]/ion-app/ion-content/div/ion-card/ion-card-content/ion-row/ion-col[1]/div/form/ion-list/ion-item[1]/ion-input/input
    title should be    Playsharper - Login
    ${username_box}     set variable    //*[@id="app"]/ion-app/ion-content/div/ion-card/ion-card-content/ion-row/ion-col[1]/div/form/ion-list/ion-item[1]/ion-input/input
    input text    ${username_box}   ${username}
    element should be visible    //*[@id="app"]/ion-app/ion-content/div/ion-card/ion-card-content/ion-row/ion-col[1]/div/form/ion-list/ion-item[2]/ion-input/input
    element should be enabled    //*[@id="app"]/ion-app/ion-content/div/ion-card/ion-card-content/ion-row/ion-col[1]/div/form/ion-list/ion-item[2]/ion-input/input
    input text    //*[@id="app"]/ion-app/ion-content/div/ion-card/ion-card-content/ion-row/ion-col[1]/div/form/ion-list/ion-item[2]/ion-input/input    ${password}
    click element    //*[@id="app"]/ion-app/ion-content/div/ion-card/ion-card-content/ion-row/ion-col[1]/div/form/ion-list/ion-button[1]/ion-label
