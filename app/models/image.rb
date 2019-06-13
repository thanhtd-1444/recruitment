class Image < ApplicationRecord
  enum publish_status: [:unpublish, :publish]
end
