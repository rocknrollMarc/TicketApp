require 'rails_helper'

feature "Viewing Projects" do
	scenario "Listing all Projects" do

		project = create(:project, name: "TextMate 2")

		visit '/'
		click_link 'TextMate 2'

		expect(page.current_url).to eq(project_url(project))
	end
end
