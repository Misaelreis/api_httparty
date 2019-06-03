#language: pt

@sessions
Funcionalidade: Gerenciar login e logout

Cenário: Fazer login
    Quando realizar a requisicao para fazer login na api
    Então a api retorna o código 200

#Cenário: Fazer logout
    #Quando realizar a requisicao para fazer logout na api
    #Então a api retorna o código 204
