require 'rails_helper'

RSpec.describe UsersController, type: :feature do
  let(:user_params) do
    { name: 'Divyesh',
      uname: 'Divyesh',
      password: '123123123' }
  end
  let(:user) { User.new(user_params) }

  describe 'Sign up Process' do
    it 'Create User' do
      visit sign_up_path
      fill_in 'user[name]', with: 'Divyesh', visible: false
      fill_in 'user[uname]', with: 'Divyesh', visible: false
      fill_in 'user[password]', with: '123123123', visible: false
      click_button('Submit')
      expect(page).to have_current_path('/users/Divyesh')
    end
  end
end
