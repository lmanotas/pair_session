require 'spec_helper'

describe StandupAttendee, :type => :model do
  describe 'Associations' do
    it {expect(subject.employee).to be_nil}
    it {expect(subject.standup).to be_nil}
  end

  describe '#is_organizer? (true/false), organizer column' do
    subject{ create(:standup_attendee, organizer: true) }

    it { expect(subject).to be_organizer }
  end
end