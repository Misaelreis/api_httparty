#language: pt

@tasks
Funcionalidade: Gerenciar tarefas

Cenario: Cadastro de tarefas
    Quando realizar uma requisicao para cadastrar uma tarefa
    Entao a api retorna o código 201

#@list
Cenario: Listar tarefas
    Quando realizar uma requisicao para listar as tarefas
    Entao a api retorna o código 200
