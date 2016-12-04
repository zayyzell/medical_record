require 'rails_helper'

RSpec.feature "UserCanRegisterInTheApps", type: :feature do


  let!(:user) do
    # User.create(
    # email: "testing@wyncode.co",
    # password: "12345",
    # confirm_password: "12345"
    # )
  end
  it "generates a new user" do
    #go to signup page
    visit root_path

    #fill email field
    fill_in "Email", with: "testing@wyncode.co"
    #fill password
    fill_in "Password", with: "12345"
    fill_in "Password confirmation", with: "12345"


    #submit to create new user
    click_button "Create User"
      save_and_open_page
    #confirm user was created
  ["Editing Medical Record", 'Name'].each do |text|
    expect(page).to have_content text
  end
    #confirm user has blank medical record
  end
end
