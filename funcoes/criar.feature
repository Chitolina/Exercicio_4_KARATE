@ignore
Feature: Criar usuario

    Scenario:
        * def criarusuario = {name: "Melissa", email:"melissa@gmail.com"}
        Given url "https://crud-api-academy.herokuapp.com/api/v1"
        Given path "users"
        Given request criarusuario
        When method post
        * set criarusuario.createdAt = response.createdAt
        * set criarusuario.id = response.id
        * set criarusuario.updatedAt = response.updatedAt
        #seta para a resposta