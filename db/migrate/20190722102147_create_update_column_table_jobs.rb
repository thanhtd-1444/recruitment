class CreateUpdateColumnTableJobs < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :company_name
    remove_column :jobs, :job_title
    remove_column :jobs, :cv_content
    remove_column :jobs, :recruiment_type
    remove_column :jobs, :job_benefit
    remove_column :jobs, :job_requirement

    add_column :jobs, :working_hours, :string
    add_column :jobs, :allowance, :text
    add_column :jobs, :salary_raise, :string
    add_column :jobs, :holiday, :string
    add_column :jobs, :vacation, :string
    add_column :jobs, :social_insurance, :text
    add_column :jobs, :welfare, :text
    add_column :jobs, :documents, :text
  end
end
