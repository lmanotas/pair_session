require 'spec_helper'

describe Employee, :type => :model do
  
  describe 'Associations' do
    it{ expect(subject.standup_attendees).to be_empty }
    it{ expect(subject.standups).to be_empty }
  end

  describe '#last_standup' do
    subject{ create(:employee, name: 'Luis') }
    let(:standup){ create(:standup) }

    before do
      standup.standup_attendees << create(:standup_attendee, employee: subject, standup: standup)
    end

    it "return the last_standup's time" do
      expect(subject.last_standup).to eq(standup)
    end
  end
end
