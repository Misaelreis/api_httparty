Quando("realizar uma requisição para cadastrar um novo contato") do
    $response = @cadastro.post_contact
    puts $response.code
    puts $response.body
    puts $response.headers
    puts $response.message
  end