# Robot Framework com Appium
## Android
Este projeto utiliza o Robot Framework e o Appium para realizar testes automatizados em aplicativos móveis.

## Pré-requisitos

-   Python 3.x
-   Robot Framework
-   Appium
-   Biblioteca AppiumLibrary
-   Android Studio

## Instalação

1.  Instale o Python 3.x em sua máquina.
2.  Instale o Robot Framework através do comando `pip install robotframework`.
3.  Instale o Appium 2.0 seguindo as instruções do [site oficial](https://appium.github.io/appium/docs/en/2.0/).
4.  Instale a biblioteca AppiumLibrary utilizando o comando `pip install robotframework-appiumlibrary`.
5.  Instale o Android Studio e configure o emulador.

## Configuração

1.  Abra o arquivo `/resources/base.robot` no editor de texto de sua preferência.
2.  Altere as variáveis `deviceName` e `udid` de acordo com as configurações do seu dispositivo e aplicativo.

## Executando os testes

1.  Inicie o servidor Appium no terminal com o comando `appium -pa /wd/hub`
2.  Inicie o emulador
3.  Abra o terminal na pasta do projeto.
4.  Execute o comando `robot -d report tests/tests.robot` para rodar todos os testes.
5.  Execute o comando `robot -d report -i <tag_name> tests/tests.robot` para rodar apenas os testes marcados com a tag especificada.
6.  Os resultados dos testes serão exibidos no terminal e estarão disponiveis no arquivo `report/report.html`.

## Estrutura do projeto


-   A pasta `app` contém o `apk` utilizado nos testes
-   Os resultados dos testes serão salvos na pasta `report`
-   A pasta `resources` contém arquivos com as palavras-chave utilizadas nos testes.
-   A pasta `tests` contém arquivos com os casos de teste a serem executados.
-   O arquivo `README.md` é o arquivo que você está lendo agora.

## Licença

Este projeto está licenciado sob a [MIT License](https://opensource.org/licenses/MIT).