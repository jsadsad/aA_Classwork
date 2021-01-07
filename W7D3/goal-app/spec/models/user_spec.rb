require 'rails_helper'

RSpec.describe User, type: :model do

  subject(:user) do
    User.create!(
      username: "Josh",
      password: "secret_password"
    )
  end

  it { should validate_presence_of(:username) }
  it { should validate_uniqueness_of(:username) }
  it { should have_many(:goals) }

  describe "passwords are encrypted" do
    it "does not save passwords to the database" do
      User.create!(username: "mary_mack", password: "abcdef")
      user = User.find_by(username: "mary_mack")
      expect(user.password).not_to be("abcdef")
    end

    it "encrypts the password using BCrypt" do
      expect(BCrypt::Password).to receive(:create)
      User.new(username: "mary_mack", password: "abcdef")
    end
  end

end
