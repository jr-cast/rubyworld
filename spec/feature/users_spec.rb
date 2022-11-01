require 'rails_helper'

RSpec.describe 'Users_controller_feature', type: :feature do
  before(:all) do
    Rails.application.load_seed
  end

  it 'displays comment counter in index page' do
    visit '/users'
    expect(page).to have_text('Posts:')
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
