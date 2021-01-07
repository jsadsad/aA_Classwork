require 'rails_helper'

RSpec.describe Goal, type: :model do

  it { should belong_to(:user).class_name('User') }
  it { should validate_presence_of(:title) }

end
