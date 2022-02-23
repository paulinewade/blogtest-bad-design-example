require "rails_helper"

feature "User inputs area code" do
  scenario "successfully" do
    visit root_path
    click_on "New User"
    fill_in "First name", with: "Pauline"
    fill_in "Last name", with: "Wade"
    fill_in "Area code", with: "979"
    click_on "Create User"

    expect(page).to have_css 'p', text: '979'

  end


  scenario "unsuccessfully" do
    visit root_path
    click_on "New User"
    fill_in "First name", with: "Pauline"
    fill_in "Last name", with: "Wade"
    fill_in "Area code", with: "abc"
    click_on "Create User"

    expect(page).to have_css 'h2', text: 'prohibited'

  end

  scenario "unsuccessfully" do
    visit root_path
    click_on "New User"
    fill_in "First name", with: "Pauline"
    fill_in "Last name", with: "Wade"
    fill_in "Area code", with: "299"
    click_on "Create User"

    expect(page).to have_css 'h2', text: 'prohibited'

  end


end
