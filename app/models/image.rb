class Image < ApplicationRecord
  mount_uploader :url, ImageUploader

  enum publish_status: [:unpublish, :publish]

  scope :newest, ->{order created_at: :desc}

  validates :url, presence: true
end
