class Song < ActiveRecord::Base
  has_many :comments
  has_many :parts 
  has_many :contributors, through: :parts
end
