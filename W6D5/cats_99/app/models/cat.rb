class Cat < ApplicationRecord
  validates :color, inclusion: {in: %w(white brown black red), message: "%{value} is not a valid color"}, presence: true
  validates :sex, inclusion: {in: %w(M F), message: "%{value} is not a valid sex"}, presence: true
  validates :date, presence: true
  validates :name, presence: true

  validates :description, presence: true
end
