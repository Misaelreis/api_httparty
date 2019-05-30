Quando("realizar a requisicao para fazer login na api") do
    $response = @login.post_login
        puts $response.code
        puts $response.body
        puts $response.headers
        puts $response.message
        $token = $response['data']['attributes']['auth-token']
        puts $token
end
  
Quando("realizar a requisicao para fazer logout na api") do
    $response = @login.del_logout($token)
    puts $response.code
    puts $response.message
end