*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
Login With Valid Credentials
    Open Browser  ${URL}  Chrome
    maximize Browser Window
    wait Until Page Contains Element  xpath=//input[@name='username']  timeout=10s
    Input Text  xpath=//input[@name='username']  Admin
    wait Until Page Contains Element  xpath=//input[@name='password']  timeout=10s
    Input Text  xpath=//input[@name='password']  admin123
    Click Button  xpath=//button[@type='submit']
    Sleep  3s
    Close Browser

*** Keywords ***
