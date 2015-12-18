require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do

    40.times do |n|
    name = Faker::Name.name
    email = "user-#{n}@example.com"
    User.create(:name => name, :email => email,
          :password => '123456', :password_confirmation => '123456')
    end

    User.all.each do |user|
      40.times do
        user.microposts.create(:content => Faker::Lorem.sentence(5))
      end
    end

  end
end 
