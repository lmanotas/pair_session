class Standup < ActiveRecord::Base

  has_many :standup_attendees
  has_many :employees, through: :standup_attendees

  accepts_nested_attributes_for :standup_attendees

  validates :organiser_1_employee_id, :organiser_2_employee_id, presence: true

  def orangisers
    [organiser_1, organiser_2]
  end

  def organiser_1
    Employee.where(id: organiser_1_employee_id).first
  end

  def organiser_2
    Employee.where(id: organiser_2_employee_id).first
  end

  def attendee_names
    employees.map(&:name).join(", ")
  end
end
