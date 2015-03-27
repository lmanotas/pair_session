require "spec_helper"

describe StandupsController do

  before do
    @controller = StandupsController.new
  end

  context "on the index page" do
    render_views

    it "shows the menu" do
      get :index

      expect(response.body).to match /New Employee/
    end

    it "shows the list of standups" do
      Standup.create(location: "Berlin", time: Time.now, organiser_1_employee_id: 1, organiser_2_employee_id: 2)

      get :index

      expect(response.body).to match /Berlin/
      expect(response.body).to match /#{Time.now.utc.strftime("%H:%m")}/
    end
  end
end
