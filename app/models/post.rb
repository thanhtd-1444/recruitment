class Post < ApplicationRecord
  belongs_to :category

  enum publish_status: [:unpublish, :publish]

  scope :newest, ->{order created_at: :desc}
end
