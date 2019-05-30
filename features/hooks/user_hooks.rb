Before '@user' do

    @last_name = Faker::Name.last_name
    @first_name = Faker::Name.first_name
    @email = "#{@first_name.downcase}.#{@last_name.downcase}@email.com"
    @body = JSON.generate({
        'user'=> {
            'email'=> @email,
            'password'=> '123456',
            'password_confirmation'=> '123456'
          }
    })

    @header = {
        'Content-Type' => 'application/json',
        'Accept' => 'application/vnd.tasksmanager.v2'

    }

    @cadastro = User.new(@body, @header)
end
