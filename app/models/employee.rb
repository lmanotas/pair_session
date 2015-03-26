class Employee < ActiveRecord::Base
  has_many :standup_attendees
  has_many :standups, through: :standup_attendees

  def last_standup
    standups.order(:time).last
  end
end
