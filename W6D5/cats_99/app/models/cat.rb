require "action_view"
# ActionView::Helpers::DateHelper

class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper

  validates :color, inclusion: {in: %w(white brown black red), message: "%{value} is not a valid color"}, presence: true
  validates :sex, inclusion: {in: %w(M F), message: "%{value} is not a valid sex"}, presence: true
  validates :birth_date, presence: true
  validates :name, presence: true

  validates :description, presence: true

  def age
    time_ago_in_words(birth_date)         
  end

end
