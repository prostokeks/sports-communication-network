class SportTable < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true

  default_scope -> { order(created_at: :desc) }

  has_many_attached :images
end
