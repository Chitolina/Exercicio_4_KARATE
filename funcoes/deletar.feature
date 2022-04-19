@ignore
Feature: Criar usuario

    Scenario:
        Given url "https://crud-api-academy.herokuapp.com/api/v1"
        Given path "users"
        Given path criarusuario.id
        When method delete