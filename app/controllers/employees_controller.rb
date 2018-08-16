class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find_by_id(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.create(employee_params)
    if @employee.save
      redirect_to employee_path(@employee)
    else
      render :new
    end
  end

  private

    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :alias, :title, :image_url, :dog_id)
    end

end
