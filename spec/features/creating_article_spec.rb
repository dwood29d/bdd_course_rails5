require 'rails_helper'

# Create a branch to do the development work
# Write feature test
# Build features to make test pass one by one
# Once the feature test passes with no errors - merge branch with master branch

# Visit root page
# click on new Article
# fill in title
# fill in body
# create article

# EXPECTATIONS
# Article has been created
# articles path

RSpec.feature "Creating Articles" do
  scenario "A user creates a new article" do
    visit "/"

    click_link "New Article"

    fill_in "Title", with: "Creating a blog"
    fill_in "Body", with: "Lorem Ipsum"

    click_button "Create Article"

    expect(page).to have_content("Article has been created")
    expect(page.current_path).to eq(articles_path)
  end

end
