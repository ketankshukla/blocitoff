# Create users
5.times do
  user = User.new(
      name:     Faker::Name.name,
      email:    Faker::Internet.email,
      password: "helloworld"
  )
  user.skip_confirmation!
  user.save
end
users = User.all

# Create items
25.times do
  todo = Todo.create(
      user: users.sample,
      name: Faker::Lorem.sentence
  )
  todo.update_attribute(:created_at, rand(10.minutes .. 6.days).ago)
end

user = User.new(
    name:     "Ketan Shukla",
    email:    "ketankshukla@gmail.com",
    password: "password"
)
user.skip_confirmation!
user.save

puts "#{User.count} users created"
puts "#{Todo.count} items created"