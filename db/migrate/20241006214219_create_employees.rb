class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :departments
      t.integer :phone
      t.date :birthday
      t.time :work_time

      t.timestamps
    end
  end
end
