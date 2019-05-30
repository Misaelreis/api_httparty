Quando("realizar a requisicao para fazer login na api") do
    $response = @login.post_login
        puts $response.code
        puts $response.body
        puts $response.headers
        puts $response.message
end
  
Quando("realizar a requisicao para fazer logout na api") do
    $response = @logout.del_logout
    puts $response.code
    puts $response.body
    puts $response.headers
    puts $response.message
end