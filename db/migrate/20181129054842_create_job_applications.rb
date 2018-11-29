class CreateJobApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :job_applications do |t|
      t.string :candidate_name
      t.string :candidate_email
      t.text :cover_letter
      t.references :job_posting, index: true

      t.timestamps
    end
  end
end
