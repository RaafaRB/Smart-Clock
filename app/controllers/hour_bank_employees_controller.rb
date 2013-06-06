class HourBankEmployeesController < ApplicationController
  # GET /hour_bank_employees
  # GET /hour_bank_employees.json
  def index
    @hour_bank_employees = HourBankEmployee.all

  end

  # GET /hour_bank_employees/1
  # GET /hour_bank_employees/1.json
  def show
    @hour_bank_employee = HourBankEmployee.find(params[:id])

  end

  # GET /hour_bank_employees/new
  # GET /hour_bank_employees/new.json
  def new
    @hour_bank_employee = HourBankEmployee.new(params[:hour_bank_employee])

  end

  # GET /hour_bank_employees/1/edit
  def edit
    @hour_bank_employee = HourBankEmployee.find(params[:id])
  end

  # POST /hour_bank_employees
  # POST /hour_bank_employees.json
  def create
    @hour_bank_employee = HourBankEmployee.new(params[:hour_bank_employee])

    respond_to do |format|
      if @hour_bank_employee.save
        format.html { redirect_to employees_path, notice: 'Hour bank employee was successfully created.' }
        format.json { render json: @hour_bank_employees, status: :created, location: @hour_bank_employee }
      else
	render action:"edit"
      end
    end
  end

  # PUT /hour_bank_employees/1
  # PUT /hour_bank_employees/1.json
  def update
    @hour_bank_employee = HourBankEmployee.find(params[:id])

    respond_to do |format|
      if @hour_bank_employee.update_attributes(params[:hour_bank_employee])
        format.html { redirect_to employees_path, notice: 'Hour bank employee was successfully updated.' }
        format.json { head :no_content }
      else
	render action:"edit"
      end
    end
  end

  # DELETE /hour_bank_employees/1
  # DELETE /hour_bank_employees/1.json
  def destroy
    @hour_bank_employee = HourBankEmployee.find(params[:id])
    @hour_bank_employee.destroy
    respond_to do |format|
      if @hour_bank_employee.update_attributes(params[:hour_bank_employee])
        format.html { redirect_to employees_path, notice: 'Hour bank employee was successfully updated.' }
        format.json { head :no_content }
     else
	render action:"edit"
     end
   end
  end
end
