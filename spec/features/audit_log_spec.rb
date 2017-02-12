require 'rails_helper'

describe 'Audit Logs Feature' do

  describe 'index' do
    before do
      admin_user = FactoryGirl.create(:admin_user)
      login_as(admin_user, :scope => :user)
      FactoryGirl.create(:audit_log)
    end
    it 'can be reached on index page' do
      visit audit_logs_path
      expect(page.status_code).to eq(200)
    end

    it 'renderes audit logs content' do
      visit audit_logs_path
      expect(page).to have_content(/MALYN, ADAM/)
    end

    it 'can not be accessed by non admin users' do
      logout(:user)
      user = FactoryGirl.create(:user)
      login_as(user, :scope => :user)

      visit audit_logs_path

      expect(current_path).to eq(root_path)
    end

  end
end