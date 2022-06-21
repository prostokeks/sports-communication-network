class Coment < ApplicationRecord
  belongs_to :user
  belongs_to :article

  default_scope -> { order(created_at: :desc) }

  validates :content, presence: true, length: {maximum: 140}

end
