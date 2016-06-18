class Part < ActiveRecord::Base
  belongs_to :song 
  belongs_to :contributor
end
