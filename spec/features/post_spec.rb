require 'rails_helper'

describe 'navigate' do
  describe 'index' do
    before do
      user = User.create(email: "adam@test.com", password: "qwerty", password_confirmation: "qwerty", first_name: "Adam", last_name: "Malyn")
      login_as(user, :scope => :user)
    end

    it 'can be reached successfully' do
      visit posts_path
      expect(page.status_code).to eq(200)
    end

    it 'can has a title of Posts' do
      visit posts_path
      expect(page).to have_content(/Posts/)
    end
  end

  describe 'creation' do
    before do
      user = User.create(email: "adam@test.com", password: "qwerty", password_confirmation: "qwerty", first_name: "Adam", last_name: "Malyn")
      login_as(user, :scope => :user)
      visit new_post_path
    end

    it 'has new form that can be reached' do
      expect(page.status_code).to eq(200)
    end

    it 'can be created from new form page' do
      fill_in 'post[date]', with: Date.today
      fill_in 'post[rationale]', with: "Some rationale"
      click_on "Save"

      expect(page).to have_content("Some rationale")
    end

    it 'will have user associated it' do
      fill_in 'post[date]', with: Date.today
      fill_in 'post[rationale]', with: "User_Association"
      click_on "Save"

      expect( User.last.posts.last.rationale ).to eq("User_Association")

    end
  end
end