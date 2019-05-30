Before '@login' do
    @body = JSON.generate({
        'session' => {
            'email' => "misael.qa@email.com",
            'password' => '123456'
          }
    })

    @header = {
        'Content-Type' => 'application/json',
        'Accept' => 'application/vnd.tasksmanager.v2' 
    }
@login = Secao.new(@body, @header)
@req = @login.post_login
@token = @req["auth-token"]
end

Before '@logout' do 
    @header = {
        'Content-Type' => 'application/json',
        'Accept' => 'application/vnd.tasksmanager.v2' 
    }
@logout = Secao.new(false, @header)

end