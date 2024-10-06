class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.date :birthday
      t.integer :phone

      t.timestamps
    end
  end
end
