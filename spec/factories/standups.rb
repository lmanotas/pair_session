FactoryGirl.define do

  factory :standup do
    location "Rome"
    time Time.now
    organiser_1_employee_id { create(:employee).id }
    organiser_2_employee_id { create(:employee).id }
  end

  factory :standup_with_attendees, parent: :standup do
    standup_attendees { [build(:standup_attendee), build(:standup_attendee)] }
  end

end