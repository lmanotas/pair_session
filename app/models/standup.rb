class Standup < ActiveRecord::Base
  has_many :standup_attendees
  has_many :employees, through: :standup_attendees

  accepts_nested_attributes_for :standup_attendees

end