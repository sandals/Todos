require "rails_helper"

feature "user sees own todos" do
	scenario "doesn't see other user's todos" do
		Todo.create!(title: "Buy milk", email: "someone_else@example.com")

		sign_in_as "someone@example.com"

		expect(page).not_to display_todo "Buy milk"
	end
end
