Quando("realizar uma requisicao para cadastrar uma tarefa") do
    $response = @tarefa.post_create_tasks
        puts $response.code
        puts $response.body
        puts $response.headers
        puts $response.message
end