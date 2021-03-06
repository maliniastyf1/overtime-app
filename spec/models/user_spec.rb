require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.create(email: "adam@test.com",
                        password: "qwerty",
                        password_confirmation: "qwerty",
                        first_name: "Adam",
                        last_name: "Malyn",
                        phone: "513524104")
  end

  describe "creation" do
    it "can be created" do
      expect(@user).to  be_valid
    end
  end

  describe "validation" do

    it "cannot be created without first_name" do
      @user.first_name = nil
      expect(@user).to_not be_valid
    end

    it "cannot be created without last_name" do
      @user.last_name = nil
      expect(@user).to_not be_valid
    end

    it "cannot be created without phone number" do
      @user.phone = nil
      expect(@user).to_not be_valid
    end

     it 'requires the phone attr to only contain integers' do
      @user.phone = "thisisstri"
      expect(@user).to_not be_valid
     end

    it 'requires the phone attr to only have 9 chars ' do
      @user.phone = "1234567890"
      expect(@user).to_not be_valid
    end
  end

  describe "custom name methods" do
    it 'has full name method that combines first and last name' do
      expect(@user.full_name).to eq("MALYN, ADAM")
    end

  end
end
