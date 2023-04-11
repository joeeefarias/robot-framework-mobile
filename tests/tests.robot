***Settings***
Resource    ../resources/base.robot

Test Setup       Abrir o App
Test Teardown    Fechar o App

*** Test Cases ***
C0001-Plantar
    [tags]    Smoke
    Given que estou na tela inicial do App
    And navego até a tela de seleção de plantas
    When seleciono a planta    Tomato
    Then valido a planta selecionada no meu jardim    Tomato