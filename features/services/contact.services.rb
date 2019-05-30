class Contact
    include HTTParty
    base_uri 'https://api-de-tarefas.herokuapp.com'

    def initialize(body, header)
        @options = {
            :headers => header,
            :body => body
        }
    end

    def post_contact
        self.class.post('/contacts', @options)
    end
end