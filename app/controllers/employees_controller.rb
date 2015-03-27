class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create
    employee = Employee.new(employee_params)
    if employee.save
      redirect_to employee, notice: "Employee created successfully"
    else
      @employee = employee
      render :new
    end
  end

  def show
  end

  private

  def employee_params
    params[:employee].permit!
  end
end
