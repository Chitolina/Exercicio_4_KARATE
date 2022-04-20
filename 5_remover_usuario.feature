Feature: Remover um usuário
    Como uma pessoa qualquer
    Desejo remover um usuário
    Para que suas informações não estejam mais registradas

    Background: Configurar url
        Given url "https://crud-api-academy.herokuapp.com/api/v1"
        And path "users"

        Scenario: Remover usuário existente
            * def criar = call read("funcoes/criar.feature")
            And path criar.criarusuario.id 
            When method delete
            Then status 204

        Scenario: Remover usuário inexistente
            * def criar = call read("funcoes/criar.feature")
            And path criar.criarusuario.id 
            When method delete

            Given path "users"
            And path criar.criarusuario.id 
            When method delete
            Then status 204