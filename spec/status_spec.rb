require 'rails_helper'

RSpec.describe Status, :type => :model do
  describe 'validation' do
    before do
      @user = User.create(
        email: 'test@example.com',
        password: 'password',
        password_confirmation: 'password',
        name: 'testUser'
      )

      @status = Status.new
      @status.user_id = @user.id
    end

    it 'is valid with body' do
      @status.body = 'テスト投稿'
      expect(@status).to be_valid
    end

    it 'is not valid without body' do
      expect(@status).not_to be_valid
    end

  end
end