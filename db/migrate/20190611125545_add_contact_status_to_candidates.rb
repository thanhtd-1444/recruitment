class AddContactStatusToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :contact_status, :integer, default: 0
  end
end
