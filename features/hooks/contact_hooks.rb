Before '@contact' do
    @name = Faker::Name.name
    @last_name = Faker::Name.last_name
    @first_name = Faker::Name.first_name
    @email = "#{@first_name.downcase}.#{@last_name.downcase}@email.com"
    @body = JSON.generate({
        'name'=> @name,
        'last_name'=> @last_name,
        'email'=> @email,
        'age'=> '28',
        'phone'=> '21984759575',
        'address'=> 'Rua Rio de Janeiro',
        'state'=> 'Minas Gerais',
        'city'=> 'Belo Horizonte'
    })

    @header = {
        'Content-Type' => 'application/json',
        'Accept' => 'application/vnd.tasksmanager.v2' 
    }
@cadastro = Contact.new(@body, @header)
end