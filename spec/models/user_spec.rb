require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do
    # validation tests/examples here
    it "is not valid #general" do
      @user = User.new(
        firstname: 'swift',
        lastname: 'current',
        email: 'this@that.com',
        password: 'this'

      )
  
      expect(@user).to be_valid
    end
  end
  describe 'Validations' do
    it "is not valid without a first name" do
      @user = User.new(
        firstname: nil,
        lastname: 'current',
        email: 'this@that.com',
        password: 'this'

      )
      @user.save
        #raise puts @product.errors.full_messages
      expect(@user.errors.full_messages).to include("Firstname can't be blank")
      #expect(@product).to raise_error("can't be blank")
    end
  end

  describe 'Validations' do
    it "is not valid without a last name" do
      @user = User.new(
        firstname: 'swift',
        lastname: nil,
        email: 'this@that.com',
        password: 'this'

      )
      @user.save
      expect(@user.errors.full_messages).to include("Lastname can't be blank")
    end
  end
  describe 'Validations' do
    it "is not valid without a password" do
      @user = User.new(
        firstname: 'swift',
        lastname: 'current',
        email: 'this@that.com',
        password: nil

      )
      @user.save
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end
  end

  describe 'Validations' do
    it "is not valid without an email" do
      @user = User.new(
        firstname: 'swift',
        lastname: 'current',
        email: nil,
        password: 'this'

      )
      @user.save
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end
  end
end
