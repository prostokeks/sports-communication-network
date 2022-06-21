class Article < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :title, presence: true
  validates :content, presence: true
  validates :s_content, presence: true, length: {maximum: 140}

  default_scope -> { order(created_at: :desc) }

  has_many_attached :images
  has_many :coments, dependent: :destroy
end
