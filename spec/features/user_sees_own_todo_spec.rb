require "rails_helper"

feature "User sees own todos" do
  scenario "Doesn't see others' todos" do 
    Todoo.create!(title: "Buy milk", email: "someone_else@example.com")
    sign_in_as "someone@example.com"
    expect(page).not_to have_css ".todo li", text: "Buy milk"
  end
end