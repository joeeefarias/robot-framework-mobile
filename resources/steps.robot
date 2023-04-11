
*** Keywords ***

que estou na tela inicial do App
    Wait Until Page Contains Element    xpath=//*[contains(@text,"Your garden is empty")]
    Log to console    ${\n}Visualizou a tela inicial do APP.

navego até a tela de seleção de plantas
    Click Element    xpath=//*[contains(@text,"PLANT LIST")]
    Wait Until Page Contains Element    id=com.google.samples.apps.sunflower:id/filter_zone
    Log to console    Visualizou a tela de selção de plantas.
seleciono a planta
    [Arguments]    ${planta}
    Wait Until Page Contains Element    xpath=//*[contains(@text,${planta})]
    FOR    ${i}    IN RANGE    10
    ${var}    Run Keyword And Return Status    Page Should Contain Text    ${planta}
    Exit For Loop If    ${var}
    Swipe By Percent    50.09    65    50.09    40
    END
    Click Text   ${planta}
    Log to console    Selcionou a planta ${planta}
    Wait Until Element Is Visible    id=com.google.samples.apps.sunflower:id/fab
    Click Element                    id=com.google.samples.apps.sunflower:id/fab
    Wait Until Page Contains Element    xpath=//*[contains(@text,"Added plant to garden")]
    Go Back
    Log to console    Adicionou a planta ${planta} ao jardim.

valido a planta selecionada no meu jardim
    [Arguments]    ${planta}
    Click Element    xpath=//*[contains(@text,"MY GARDEN")]
    Text Should Be Visible    ${planta}
    Log to console    Validou a planta ${planta} no jardim.