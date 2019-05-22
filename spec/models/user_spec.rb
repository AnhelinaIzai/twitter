require 'rails_helper'

RSpec.describe User, type: :model do
  subject{
    build(:user)
  }

  describe "Validations" do

    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a password" do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without an email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    # it "should follow and unfollow a user" do
    #   michael  = users(:michael)
    #   archer   = users(:archer)
    #   assert_not michael.following?(archer)
    #   michael.follow(archer)
    #   assert michael.following?(archer)
    #   assert archer.followers.include?(michael)
    #   michael.unfollow(archer)
    #   assert_not michael.following?(archer)
    # end
    
  end
end

