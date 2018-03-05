require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    it 'Should contain first name' do
      @user = User.new(first_name: nil,
        last_name: 'Middleton',
        email: 'yvesmiddleton@gmail.com'
      )

      expect(@user).to_not be_valid
      expect(@user.errors[:first_name].size).to eq(1)
    end

    it 'Should contain last name' do
      @user = User.new(first_name: 'Yves',
        last_name: nil,
        email: 'yvesmiddleton@gmail.com'
      )

      expect(@user).to_not be_valid
      expect(@user.errors[:last_name].size).to eq(1)
    end

    it 'Should contain email' do
      @user = User.new(first_name: 'Yves',
        last_name: 'Middleton',
        email: nil
      )

      expect(@user).to_not be_valid
      expect(@user.errors[:email].size).to eq(2)
    end

    it 'Should contain password' do
      @user = User.new(first_name: 'Yves',
        last_name: 'Middleton',
        email: 'yvesmiddleton@gmail.com',
        password: nil,
        password_confirmation: nil
      )

      expect(@user).to_not be_valid
    end

    it 'Passwords should be the same' do
      @user = User.new(first_name: 'Yves',
        last_name: 'Middleton',
        email: 'yvesmiddleton@gmail.com',
        password: 'password1',
        password_confirmation: 'password2'
      )

      expect(@user).to_not be_valid
      expect(@user.errors.full_messages.size).to eq(2)
    end

    it 'Email should be unique' do
      @user1 = User.create!(first_name: 'Yves',
        last_name: 'Middleton',
        email: 'gg@gmail.com',
        password: 'password1',
        password_confirmation: 'password1'
      )
      @user2 = User.new(first_name: 'John',
        last_name: 'Doe',
        email: 'GG@GMAIL.COM',
        password: 'password2',
        password_confirmation: 'password2'
      )

      expect(@user2).to_not be_valid
    end

    it 'Passwords must be 6 characters in length' do
      @user = User.new(first_name: 'Yves',
        last_name: 'Middleton',
        email: 'yvesmiddleton@gmail.com',
        password: 'pass',
        password_confirmation: 'pass'
      )

      expect(@user).to_not be_valid
      expect(@user.errors[:password].size).to eq(1)
    end

    describe '.authenticate_with_credentials' do
    # examples for this class method here

      it 'should return true if email and password matches' do
        @user = User.create!(first_name: 'Jim',
        last_name: 'Bo',
        email: 'jimbo@gmail.com',
        password: '123456',
        password_confirmation: '123456'
      )

      authenticated = @user.authenticate_with_credentials(@user.email, @user.password)
      authenticated2 = @user.authenticate_with_credentials(@user.email, 'passssword')
      expect(authenticated).to be_valid
      expect(authenticated2).to eq(nil)
      end

      it 'should return true if email has spaces in front of' do
        @user = User.create!(first_name: 'Jim',
        last_name: 'Bo',
        email: 'jimbo@gmail.com',
        password: '123456',
        password_confirmation: '123456'
      )

      authenticated = @user.authenticate_with_credentials('  jimbo@gmail.com  ', @user.password)
      authenticated2 = @user.authenticate_with_credentials(@user.email, 'passssword')
      expect(authenticated).to be_valid
      expect(authenticated2).to eq(nil)
      end

      it 'should return true if email is not case matched' do
        @user = User.create!(first_name: 'Jim',
        last_name: 'Bo',
        email: 'jimbo@gmail.com',
        password: '123456',
        password_confirmation: '123456'
      )

      authenticated = @user.authenticate_with_credentials('jImbo@gmail.com', @user.password)
      authenticated2 = @user.authenticate_with_credentials(@user.email, 'passssword')
      expect(authenticated).to_not eq(nil)
      expect(authenticated2).to eq(nil)
      end
    end
  end
end
