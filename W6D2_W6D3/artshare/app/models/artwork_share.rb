class ArtworkShare < ApplicationRecord
  validates :artwork_id, presence: true, uniqueness: true
  validates :viewer_id, presence: true, uniqueness: true

  belongs_to :viewer,
    primary_key: :id,
    foreign_key: :viewer_id,
    class_name: :User
end
