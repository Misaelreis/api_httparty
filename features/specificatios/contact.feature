#language: pt

@contact
Funcionalidade: Gerenciamento de contatos

@createcontact
Cenário: Criar um novo contato
    Quando realizar uma requisição para cadastrar um novo contato
    Então a api retorna o código 201

@listcontact
Cenário: Listar contatos
    Quando realiar uma requisicao para listar os contatos
    Então a api retorna o código 200
