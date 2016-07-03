class Song < ActiveRecord::Base
  has_many :comments
  has_many :parts 
  has_many :contributors, through: :parts
  
  
  validates :title, presence: true, length: {minimum: 3}, uniqueness: true
  validates :directory, presence: true, uniqueness: true
  validates :tempo, inclusion: { in: 0..500 }
end
