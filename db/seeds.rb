
u = User.create!(
	email: 'osahin91@gmail.com',
	password: 'password',
	confirmed_at: DateTime.now
	)

5.times do
  User.create!( 
    email:    Faker::Internet.email,
    password: Faker::Internet.password )
end

users = User.all

5.times do 
	RegisteredApplication.create!(
			name: Faker::Name.name,
			URL: Faker::Internet.url,
			user: users.sample)
end

5.times do 
	RegisteredApplication.create!(
			name: Faker::Name.name,
			URL: Faker::Internet.url,
			user: u)
end

registered_applications = RegisteredApplication.all

5.times do 
	Event.create!(
			name: Faker::Name.name,
			registered_application: registered_applications.sample)
end

100.times do 
	Event.create!(
			name: Faker::Superhero.name,
			registered_application: u.registered_applications.sample)
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{RegisteredApplication.count} apps created"
puts "#{Event.count} events created"