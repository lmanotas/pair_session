require 'spec_helper'

RSpec.describe "Standup", :type => :model do

  describe "the attendee_names method" do

    context "when there is no attendees" do
      before do
        create(:standup_with_attendees)
      end

    end

    context "when there are some attendees" do
      before do
        create(:standup_with_attendees)
      end



    end

  end
end
