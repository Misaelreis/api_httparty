class Secao
    include HTTParty
    base_uri 'https://api-de-tarefas.herokuapp.com'

    def initialize(body, header)
        @options = {
            :headers => header,
            :body => body
        }
    end

    def post_login 
        self.class.post('/sessions', @options)
    end

    def delete_logout
        self.class.delete('sessions/'@token, @options)
    end
end
