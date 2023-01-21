task sample_data: :environment do
p "creating sample data"

user = User.find_or_create_by(email: "alice@example.com") do |user|
  user.password = "password"
end
p "Users created:"
p User.all

user.tasks.destroy_all
p Task.statuses.values
Task.statuses.values.each do |status|
  rand(10..15).times do
    user.tasks.create(
      body: Faker::Hacker.say_something_smart,
      status: status,
      user: user
    )
  end
end

p "Tasks created:"
p Task.all

end
