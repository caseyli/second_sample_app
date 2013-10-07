class CreateResumeEntries < ActiveRecord::Migration
  def change
    create_table :resume_entries do |t|
      t.date :start_date
      t.date :end_date
      t.text :description

      t.timestamps
    end
  end
end
