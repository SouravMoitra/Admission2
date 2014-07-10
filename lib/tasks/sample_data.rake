namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(email: "example@railstutorial.org",
                 password: "foobar20", level: 5)
    20.times do |n|
      email = "a#{n+1}@gmail.com"
      password  = "foobar20"
      User.create!(email: email,
                   password: password)
    end
  end
end
