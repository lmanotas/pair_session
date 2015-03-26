class StandupAttendee < ActiveRecord::Base
  belongs_to :employee
  belongs_to :standup
end
