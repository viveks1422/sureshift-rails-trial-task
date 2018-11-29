class CreateJobPostings < ActiveRecord::Migration[5.2]
  def change
    create_table :job_postings do |t|
      t.string :title
      t.text :description
      t.date :closing_date
      t.string :trello_id

      t.timestamps
    end
  end
end
