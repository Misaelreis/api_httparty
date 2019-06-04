Before '@tasks' do
    @body_login = JSON.generate({
        'session' => {
            'email' => "misael.qa@email.com",
            'password' => '123456'
          }
    })
   
    @header_login = {
        'Content-Type' => 'application/json',
        'Accept' => 'application/vnd.tasksmanager.v2',
    }
   
    @login = Secao.new(@body_login, @header_login)
    @req = @login.post_login
    @token = @req['data']['attributes']['auth-token']


    @body = JSON.generate({
        'task'=> {
            'title'=> 'Tarefa qa',
            'description' => 'Tarefa de teste',
            'deadline' => '2019-06-02 15:00:00',
            'done'=> true
          }
    })

    @header =  { 
        'Content-Type' => 'application/json',
        'Accept' => 'application/vnd.tasksmanager.v2',
        'Authorization' => @token
    }

    @tarefa = Tarefa.new(@body, @header)
    @list = Tarefa.new(false, @header)
end
