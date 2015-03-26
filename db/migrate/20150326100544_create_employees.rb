class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.datetime :joined_at

      t.timestamps
    end
  end
end
