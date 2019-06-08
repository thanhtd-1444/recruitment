class Post < ApplicationRecord
  belongs_to :category
  has_many :comments, dependent: :destroy

  mount_uploader :image, ImageUploader

  enum publish_status: [:unpublish, :publish]

  scope :newest, ->{order created_at: :desc}

  validates :title, presence: true, uniqueness: true
  validates :content, presence: true
end
