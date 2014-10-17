class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find_by(:id => params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.create(params[:employee])
  end

  def edit
    @employee = Employee.find_by(:id => params[:id])
  end

  def update
    @employee = Employee.find_by(:id => params[:id])
    @employee.update(params[:employee])
  end

  def destroy
    @employee = Employee.find_by(:id => params[:id])
    @employee.destroy
  end
end
