require 'faker'

# admin user
user = User.new(
  name:     'admin',
  email:    'default@user.com',
  password: 'default1'
)
user.skip_confirmation!
user.save!

# users
3.times do
  user = User.new(
    name:     Faker::Name.name,
    email:    Faker::Internet.email,
    password: Faker::Internet.password
  )
  user.skip_confirmation!
  user.save!
end
users = User.all

# to do items
18.times do
  Item.create!(
    name:   Faker::Hacker.say_something_smart,
    user:   users.sample
  )
end