Before '@tasks' do
    @body = JSON.generate({
        'task'=> {
            'title'=> 'Tarefa qa',
            'description' => 'Descrição da tarefa',
            'deadline' => '2019-06-02 15:00:00',
            'done'=> true
          }
    })

    @header = {
        'Content-Type' => 'application/json',
        'Accept' => 'application/vnd.tasksmanager.v2',
    }

    @login = Secao.new(@body, @header)
    @req = @login.post_login
    @token = @req['auth-token']

    @header =  { 
        'Content-Type' => 'application/json',
        'Accept' => 'application/vnd.tasksmanager.v2',
        'Authorization' => @token
    }

    @tarefa = Tarefa.new(@body, @header)
end
