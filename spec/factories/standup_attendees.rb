FactoryGirl.define do

  factory :standup_attendee do
    standup
    employee
  end

  factory :standup_attendee_organizer do
    standup
    employee
    organizer true
  end
end
