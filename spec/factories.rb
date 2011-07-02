require 'factory_girl'

Factory.define :user do |u|
  u.name 'Test User'
  u.email 'user@test.com'
  u.password 'please'
end

Factory.define :micropost do |micropost|
micropost.content "Foo bar"
micropost.association :user
end

