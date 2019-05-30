#language: pt

@contact
Funcionalidade: Gerenciamento de contatos

Cenário: Criar um novo contato
    Quando realizar uma requisição para cadastrar um novo contato
    Então a api retorna o código 201
