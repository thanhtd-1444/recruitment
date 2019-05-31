class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :image
      t.text :content
      t.integer :publish_status, default: 0
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
