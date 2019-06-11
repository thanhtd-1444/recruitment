class Candidate < ApplicationRecord
  enum contact_status: [:not_contact, :contacted]

  validates :name, :email, :phone_number, :content, presence: true

  scope :order_by_contact_status, -> {order :contact_status}
end
