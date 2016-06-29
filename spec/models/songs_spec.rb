require 'rails_helper'
require 'factory_girl_rails'

#RSpec.describe Songs, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
describe Song do
  it "has valid entries" do
    FactoryGirl.create(:song).should be_valid
  end
  #it "has a valid directory"
  #it "has a valid tempo"
  #it "has a valid key"
  #it "has a valid sample"
end
