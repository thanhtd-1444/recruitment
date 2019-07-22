class RenameColumnCandidate < ActiveRecord::Migration[5.2]
  def change
    rename_column :candidates, :website, :company_name
  end
end
