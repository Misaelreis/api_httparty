Quando("realizar uma requisição para cadastrar um novo contato") do
    $response = @cadastro.post_contact
    puts $response.code
    puts $response.body
    puts $response.headers
    puts $response.message
  end

  Quando("realiar uma requisicao para listar os contatos") do
    $response = @list.get_list
    puts $response.code
    puts $response.message
    
  end