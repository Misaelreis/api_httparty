Quando("realizar a requisição para cadastrar um novo usuário") do
    $response = @cadastro.post_cadastro
    puts $response.code
    puts $response.body
    puts $response.headers
    puts $response.message
  end
  Então("a api retorna o código {int}") do |status_code|
    expect(status_code).to eq($response.code)
  end