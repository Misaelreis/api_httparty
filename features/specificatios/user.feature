#language: pt
#Meu username (misael.qa@email.com, 123456)

@user
Funcionalidade: Gerenciamento de usuário

Cenário: Criar um novo usuário
    Quando realizar a requisição para cadastrar um novo usuário
    Então a api retorna o código 201