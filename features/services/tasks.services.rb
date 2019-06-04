class Tarefa
    include HTTParty
    base_uri 'https://api-de-tarefas.herokuapp.com'
    #debug_output $stderr

    def initialize(body, header)
        @options = {
            :headers => header,
            :body => body
        }
    end

    def post_create_tasks 
        self.class.post('/tasks', @options)
    end

    def get_list_tasks
        self.class.get('/tasks', @options)
    end
end