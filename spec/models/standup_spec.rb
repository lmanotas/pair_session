require 'spec_helper'

RSpec.describe "Standup", :type => :model do

  describe "the attendee_names method" do

    context "when there is no attendees" do
      let(:standup) { create(:standup) }

      it "is empty" do
        expect(standup.attendee_names).to be_empty
      end
    end

    context "when there are some attendees" do
      let(:standup) { create(:standup_with_attendees) }

      it "returns a comma separated list of the attendee names" do
        expect(standup.attendee_names).to eq("Emma Employee, Emma Employee")
      end
    end
  end
end
