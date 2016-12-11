require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'creation' do
    before do
      user = User.create(id: 1, email: "adam@test.com", password: "qwerty", password_confirmation: "qwerty", first_name: "Adam", last_name: "Malyn")
      login_as(user, :scope => :user)
      @post = Post.create( date: Date.today, rationale: "Anything")
      @post.user_id = user.id
    end
    it 'can be created' do
      expect(@post).to be_valid
    end

    it 'cannot be create without date and rationale' do
      @post.date = nil
      @post.rationale = nil
      expect(@post).to_not be_valid
    end

  end
end
