require 'faker'

FactoryGirl.define do
  factory :song do |s|
    s.title { Faker::Book.title }
    s.tempo { Faker::Number.number(3) }
    s.directory { 'C:\Program Files\Test\Project1.rdp' }
    s.sample { Faker::Name.last_name }
    s.key { 'C' }
  end
end