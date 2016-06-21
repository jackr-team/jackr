class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.datetime :date_applied
      t.datetime :response_date
      t.boolean :offer
      t.decimal :offer_salary
      t.text :cover_letter
      t.boolean :follow_up
      t.datetime :follow_up_date
      t.string :contact_phone
      t.string :contact_email
      t.string :contact_first_name
      t.string :contact_last_name
      t.text :notes
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
