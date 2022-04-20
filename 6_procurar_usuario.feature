Feature: Buscar usuários 
    Como uma pessoa qualquer
    Desejo consultar os dados de um usuário
    Para visualizar as informações deste usuário

    Background: Configurar url
        Given url "https://crud-api-academy.herokuapp.com/api/v1"
        And path "search"

    #não rolou ;/