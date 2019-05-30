class User
    include HTTParty
    base_uri 'https://api-de-tarefas.herokuapp.com'

    def initialize(body, header)
        @options = {
            :headers => header,
            :body => body
        }
    end

    def post_cadastro 
        self.class.post('/users', @options)
    end
end