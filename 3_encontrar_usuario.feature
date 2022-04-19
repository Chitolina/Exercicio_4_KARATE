Feature: Consultar usuários cadastrados
    Como uma pessoa qualquer
    Desejo consultar dados de um usuário
    Para visualizar as informações deste usuário

    Background: Base url 
        Given url "https://crud-api-academy.herokuapp.com/api/v1"
        And path "users"

    Scenario: Buscar usuário com sucesso 
        * def criaid = call read('criaruser.feature@criarUsuarioComId')
        * def id = criaid.response.id
       
        And path id
        When method get
        Then status 200
        And match response contains read('/funcoes/response.json')

    Scenario: Usuário com id inexistente
        And path java.util.UUID.randomUUID()
        When method get
        Then status 404