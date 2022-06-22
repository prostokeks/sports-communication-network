class Room < ApplicationRecord

  has_many :chat, dependent: :destroy

  default_scope -> { order(created_at: :desc) }

  
end
