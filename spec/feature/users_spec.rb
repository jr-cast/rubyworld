require 'rails_helper'

RSpec.describe 'Users_controller_feature', type: :feature do
  before(:all) do
    Rails.application.load_seed
  end

  it 'display registered username in the screen' do
   visit '/users'
   expect(page).to have_text('Pedro' && 'Maya' && 'Montiel')
  end

  it 'display correct number of posts' do
    visit '/users'
    expect(page).to have_text("4" && "2" && "1")
  end

  it 'display specific users profile picture' do
    visit '/users'
    expect(page).to have_css("img[src*='twitch-profile-photo-oEqs2yqaL8s.jpg']")
  end


  it 'displays details of user account' do
    visit '/users/1'
    expect(page).to have_text('About')
  end

  it 'displays last user post' do
    visit '/users/1'
    expect(page).to have_text('What is a professiona tool anyway?')
  end

  it 'display See all posts button' do
    visit '/users/1'
    expect(page).to have_button
  end

  it 'display See all posts button' do
    visit '/users/1'
    expect(page).to have_text('See all posts of user')
  end
end
