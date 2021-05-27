class Message < ApplicationRecord
  belongs_to :room
  belongs_to :use
  has_one_attached :image

  validates :content, presence: true
end

private

  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end