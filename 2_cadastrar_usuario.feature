Feature: Consultar usuários cadastrados
    Como uma pessoa qualquer
    Desejo registrar informações de usuário
    Para poder manipular estas informações livremente

    Background: Base url
        Given url "https://crud-api-academy.herokuapp.com/api/v1"
        And path "users"
       
        Scenario: Cadastrar usuario
            And request {name:"Elis",email:"reginaduarte@gmail.com"}
            When method post
            Then status 201

        Scenario: Cadastrar usuario com email errado
            And request {name:"Martaf Bhuks",email:"martsafglobal-mailcom"}
            When method post
            Then status 400

        Scenario: Cadastrar usuario com email já cadastrado
            And request {name:"Malias Golpista",email:"reginaduarte@gmail.com"}
            When method post
            Then status 422
            And print response 

        Scenario: Cadastrar usuario com mais de 100 caracteres
            And request {name:"iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiixiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii",email:"joasnalopes@gmail.com"}
            When method post
            Then status 400

        Scenario: Cadastrar usuario com mais de 100 caracteres
            And request {name:"Jozec Nobres",email:"lllllllsllllllllllllllllllllllllllllllllllllllllllllllllllllllll@gmail.com"}
            When method post
            Then status 400
