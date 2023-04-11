*** Settings ***
Library    AppiumLibrary

Resource    steps.robot

*** Keywords ***
Abrir o App
     Open Application    http://localhost:4723/wd/hub
    ...                automationName=UiAutomator2
    ...                platformName=Android
    ...                deviceName=Pixel 4 API 31
    ...                app=${EXECDIR}/app/sunflower.apk
    ...                udid=emulator-5554

Fechar o App
    Capture Page Screenshot
    Close Application