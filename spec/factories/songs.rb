require 'faker'

FactoryGirl.define do
  factory :song do |s|
    s.title { Faker::Book.title }
    s.tempo { 200 }
    # Not sure why this keeps being a uninitialized constant
    # s.directory { Faker::File.file_name('C:\Users\TPB\Sounds')}
    s.directory { Faker::Lorem.characters(20) }
    s.sample { Faker::Name.last_name }
    s.key { 'C Major' }
  end
end