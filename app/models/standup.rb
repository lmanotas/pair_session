class Standup < ActiveRecord::Base

  has_many :standup_attendees
  has_many :employees, through: :standup_attendees

  accepts_nested_attributes_for :standup_attendees

  def organizers 
    employees.joins(:standup_attendees).where(standup_attendees: { organizer: true })
  end

  def attendee_names
    employees.map(&:name).join(", ")
  end
end
