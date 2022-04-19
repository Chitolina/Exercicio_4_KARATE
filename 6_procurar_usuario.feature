Feature: Encontrar usuários 
    Como uma pessoa qualquer
    Desejo consultar os dados de um usuário
    Para visualizar as informações deste usuário

    Background: Base url
        Given url "https://crud-api-academy.herokuapp.com/api/v1"
        And path "users"


    Scenario: buscar c name
        * def criaid = call read('criaruser.feature@criarUsuarioComId2')
    #não rolou :(())