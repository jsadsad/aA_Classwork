# == Schema Information
#
# Table name: responses
#
#  id          :bigint           not null, primary key
#  response    :string           not null
#  user_id     :integer          not null
#  question_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Response < ApplicationRecord
    
    belongs_to :user,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: "User"
end
