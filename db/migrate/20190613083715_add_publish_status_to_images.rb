class AddPublishStatusToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :publish_status, :integer
  end
end
