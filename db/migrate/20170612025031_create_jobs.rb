class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :Title
      t.string :Organization
      t.string :Location
      t.string :Date
      t.string :Description
      t.string :Application
      t.string :Instructions

      t.timestamps
    end
  end
end
