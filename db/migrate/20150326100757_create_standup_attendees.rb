class CreateStandupAttendees < ActiveRecord::Migration
  def change
    create_table :standup_attendees do |t|
      t.references :standup
      t.references :employee

      t.timestamps
    end
  end
end
