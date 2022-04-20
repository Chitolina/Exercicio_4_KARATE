@ignore
Feature: Hook

    @criarUsuarioComId
    Scenario: Criar usuario
        * def payload = read("/funcoes/payloadcriacaoUser.json")
        Given url "https://crud-api-academy.herokuapp.com/api/v1" + "/users"
        And request payload
        When method post
        Then status 201

    @criarUsuarioComId2
    Scenario: Criar usuario
        * def payload = read("/funcoes/payloadcriacaoUser2.json")
        Given url "https://crud-api-academy.herokuapp.com/api/v1" + "/users"
        And request payload
        When method post
        Then status 201

    @criarUsuarioComId3
    Scenario: Criar usuario
        * def payload = read("/funcoes/payloadcriacaoUser3.json")
        Given url "https://crud-api-academy.herokuapp.com/api/v1" + "/users"
        And request payload
        When method post
        Then status 201