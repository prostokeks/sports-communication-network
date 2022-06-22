class Room < ApplicationRecord

  has_many :chats, dependent: :destroy

  default_scope -> { order(created_at: :desc) }

  validates :title, presence: true, length: {maximum: 140}
  validates :content, presence: true, length: {maximum: 300}

end
