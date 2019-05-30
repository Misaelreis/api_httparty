class Secao
    include HTTParty
    base_uri 'https://api-de-tarefas.herokuapp.com'
    #debug_output $stderr

    def initialize(body = {}, header)
        @options = {
            :headers => header,
            :body => body
        }
    end

    def post_login 
        self.class.post("/sessions", @options)
    end

    def del_logout(tk)
        self.class.delete("/sessions/#{tk}", @options)
    end

end
