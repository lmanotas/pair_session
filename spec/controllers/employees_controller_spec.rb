require "spec_helper"

describe EmployeesController do

  context "Creating a new employee" do

    it "goes to the index on success" do
      post :create, employee: { name: "Emma Employee" }

      expect(flash[:notice]).to be_present
      expect(response).to redirect_to(employees_path)
    end

  end
end
