#language: pt

@user
Funcionalidade: Gerenciamento de usuário

@createuser
Cenário: Criar um novo usuário
    Quando realizar a requisição para cadastrar um novo usuário
    Então a api retorna o código 201
