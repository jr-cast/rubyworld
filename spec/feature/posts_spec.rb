require 'rails_helper'

RSpec.describe "Posts_controller_feature", type: :feature do
  before(:all) do
    Rails.application.load_seed
  end

  it 'displays number of user posts correctly' do
    visit '/users/1/posts'
    expect(page).to have_text('Posts: 4')
  end

  it 'displays number of comments correctly' do
    visit '/users/1/posts'
    expect(page).to have_text('Comments: 10')
  end

  it 'displays number of likes correctly' do
    visit '/users/1/posts'
    expect(page).to have_text('Likes: 2')
  end
end