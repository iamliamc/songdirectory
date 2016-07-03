require 'rails_helper'

RSpec.feature "Song", :type => :feature do
  scenario "Create a new song" do
    #Need to simulate logging in to check the correct fields being created for a new song
    #login("ljc3179@gmail.com")
    #@user = User.find(1)
    session[:user_id] = 1
    visit "/songs/new"

    fill_in "song[title]", :with => "The Ruler of Mines"
    fill_in "song[directory]", :with => "C:/Users/TPB/Test.rdp"
    fill_in "song[tempo]", :with => 123
    fill_in "song[key]", :with => "A Major"
    fill_in "song[sample]", :with => "Heavy Handed - Manny Moscow"

    click_button "Create"

    expect(page).to have_text("The Ruler of Mines")
  end
end