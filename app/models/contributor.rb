class Contributor < ActiveRecord::Base
  has_many :parts 
  has_many :songs, through: :parts
end
