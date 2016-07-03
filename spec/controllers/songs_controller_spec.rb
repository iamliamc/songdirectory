require 'rails_helper'

RSpec.describe SongsController, type: :controller do
  describe "Song #create" do
    context "with valid attributes" do
      it "creates new song" do
        @s = Song.count
        post :create, song: FactoryGirl.create(:song)
        expect(Song.count).to eq(@s + 1)
      end
    end
  end
end
