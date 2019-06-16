class CreateJobComments < ActiveRecord::Migration[5.2]
  def change
    create_table :job_comments do |t|
      t.string :user_name
      t.string :email
      t.text :content
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
