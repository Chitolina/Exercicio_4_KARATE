Feature: Consultar usuários cadastrados
    Como uma pessoa qualquer
    Desejo consultar todos os usuários cadastrados
    Para ter as informações de todos os usuários

    Background: Base url
        Given url "https://crud-api-academy.herokuapp.com/api/v1"
        And path "users"
       
        Scenario: Checa a resposta
            * def response = {id:"#string",name:"#string", email:"#string",createdAt:"#string",updatedAt:"#string"}
            When method get
            Then status 200
            And match response == "#array"
            And match each response contains response