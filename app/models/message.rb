class Message < ApplicationRecord
  belongs_to :room
  belongs_to :use

  validates :content, presence: true
end

