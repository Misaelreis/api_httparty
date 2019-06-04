Quando("realizar uma requisicao para cadastrar uma tarefa") do
    $response = @tarefa.post_create_tasks
        puts $response.code
        puts $response.body
        puts $response.headers
        puts $response.message
end

Quando("realizar uma requisicao para listar as tarefas") do
    $response = @list.get_list_tasks
        puts $response.code
        #puts $response.body
        puts $response.headers
        puts $response.message
end