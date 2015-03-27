class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.datetime :joined_at
      t.timestamps
    end
  end
end
