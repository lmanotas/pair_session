class StandupAttendee < ActiveRecord::Base
  belongs_to :employee
  belongs_to :standup

  def is_organizer?
    organizer?
  end
end
