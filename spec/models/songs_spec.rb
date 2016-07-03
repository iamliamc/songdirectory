require 'rails_helper'
require 'factory_girl_rails'

  RSpec.describe Song, type: :model do
  #describe Song do
      it "has valid song column entries" do
        expect(FactoryGirl.create(:song)).to be_valid
  end
    
  describe Song do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:directory) }
  end
end
