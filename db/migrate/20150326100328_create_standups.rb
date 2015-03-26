class CreateStandups < ActiveRecord::Migration
  def change
    create_table :standups do |t|
      t.datetime :time
      t.integer :organiser_1_employee_id
      t.integer :organiser_2_employee_id
      t.string :location

      t.timestamps
    end
  end
end
