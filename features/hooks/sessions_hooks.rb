Before '@sessions' do
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

end
