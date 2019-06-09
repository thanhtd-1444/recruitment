class CreateRecruitmentInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :recruitment_informations do |t|
      t.string :title
      t.text :content
      t.string :quantity
      t.string :place
      t.string :salary
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
