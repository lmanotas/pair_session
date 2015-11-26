class AddOrganizerToStandupAttendees < ActiveRecord::Migration
  def change
    add_column :standup_attendees, :organizer, :boolean
  end
end
