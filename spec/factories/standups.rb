FactoryGirl.define do

  factory :standup do
    location "Rome"
    time Time.now
  end

  factory :standup_with_attendee, class: 'Standup' do
    location "Rome"
    time Time.now
    employees
  end

end