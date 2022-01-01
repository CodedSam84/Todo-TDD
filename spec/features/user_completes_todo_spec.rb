require 'rails_helper'

feature "user completes todo" do
  scenario "successfully" do
    sign_in
    click_on "Add a new todo"
    fill_in "Title", with: "Start ruby course"
    click_on "Submit"

    click_on "Mark complete"
    expect(page).to have_css ".todo li.completed", text: "Start ruby course"
  end
end