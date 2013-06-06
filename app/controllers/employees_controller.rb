class EmployeesController < ApplicationController
  # GET /employees
  # GET /employees.json
  before_filter :fetch, only: [:show, :edit, :destroy]
  def fetch
    @employee = Employee.find(params[:id])
  end
  def index
    @employees = Employee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employees }
    end
  end
  
  def capture_emp
    @employee = Employee.find(params[:id])
    last_history = @employee.hour_histories.last

    last_history = HourHistory.new() unless last_history)

    if(!last_history.day || last_history.day < Time.now.day)
	last_history = 	ClockChecker.incomplete?
    else
        if(params[:check] == "check_in") ClockChecker.check_in
            ClockChecker.check_out
        else
            if(params[:check] == "check_in") ClockChecker.check_in
                ClockChecker.check_out
	    end
	end
    end
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
  end

  # GET /employees/new
  # GET /employees/new.json
  def new
    @employee = Employee.new
  end

  # GET /employees/1/edit
  def edit
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(params[:employee])

    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
        format.json { render json: @employee, status: :created, location: @employee }
      else
        format.html { render action: "new" }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employees/1
  # PUT /employees/1.json
  def update
    respond_to do |format|
      if @employee.update_attributes(params[:employee])
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy

    respond_to do |format|
      format.html { redirect_to employees_url }
      format.json { head :no_content }
    end
  end
end
