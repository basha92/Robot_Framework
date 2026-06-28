*** Settings ***
#add required libraries here
Library  SeleniumLibrary

*** Variables ***
${URL}  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}  Chrome

*** Test Cases ***
#write test title and below that add test steps with a tab space
Login With Valid Credentials
    Open Browser  ${URL}  ${BROWSER}
    LoginToApplication
    Sleep  3s
    Close Browser

*** Keywords ***
LoginToApplication
    maximize Browser Window
    wait Until Page Contains Element  xpath=//input[@name='username']  timeout=10s
    Input Text  xpath=//input[@name='username']  Admin
    wait Until Page Contains Element  xpath=//input[@name='password']  timeout=10s
    Input Text  xpath=//input[@name='password']  admin123
    Click Button  xpath=//button[@type='submit']
    Sleep  3s
