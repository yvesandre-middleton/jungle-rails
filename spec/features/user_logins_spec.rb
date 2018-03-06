require 'rails_helper'

RSpec.feature "UserLogins", type: :feature, js: true do

  # SETUP
  before :each do
    User.create! first_name: 'Yves', last_name: 'Middleton', email: 'johndoe@gmail.com', password: 'password'
  end

 scenario "Users can log in" do
  # ACT
  visit '/login'
  within first('.loginclass') do
    fill_in 'email', with: 'johndoe@gmail.com'
    fill_in 'password', with: 'password'
    find('input[name="commit"]').click
  end

  # DEBUG
  # sleep 5
  # puts 'hello'
  # puts page.html


  # VERIFY
  expect(page).to have_content('Logout')
  save_screenshot
  end

end

