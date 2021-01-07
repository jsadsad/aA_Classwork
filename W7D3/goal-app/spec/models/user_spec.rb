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
  it { should have_many(:cheers_given) }
  it { should have_many(:cheers_received).through(:goals) }
end
