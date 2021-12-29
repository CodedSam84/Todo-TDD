require 'rails_helper'

feature "User creates todo" do
  scenario "successfully" do
    visit root_path
    click_on "Add a new todo"
    fill_in "Title", with: "Vacation plan"
    click_on "Submit"
    expect(page).to have_css ".todo li", text: "Vacation plan"
  end
end