class ScheduledEmployeesController < ApplicationController
  # GET /scheduled_employes
  # GET /scheduled_employes.json
  # GET /scheduled_employes/1
  # GET /scheduled_employes/1.json
  def show
    @scheduled_employee = ScheduledEmployee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scheduled_employee }
    end
  end

  # GET /scheduled_employes/new
  # GET /scheduled_employes/new.json
  def new
    @scheduled_employee = ScheduledEmployee.new(params[:scheduled_employee])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scheduled_employee }
    end
  end

  # GET /scheduled_employes/1/edit
  def edit
    @scheduled_employee = ScheduledEmployee.find(params[:id])
  end

  # POST /scheduled_employes
  # POST /scheduled_employes.json
  def create
    @scheduled_employee = ScheduledEmployee.new(params[:scheduled_employee])

    respond_to do |format|
      if @scheduled_employee.save
        format.html { redirect_to @scheduled_employee, notice: 'Scheduled employe was successfully created.' }
        format.json { render json: @scheduled_employee, status: :created, location: @scheduled_employee }
      else
        format.html { render action: "new" }
        format.json { render json: @scheduled_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scheduled_employes/1
  # PUT /scheduled_employes/1.json
  def update
    @scheduled_employee = ScheduledEmployee.find(params[:id])

    respond_to do |format|
      if @scheduled_employee.update_attributes(params[:scheduled_employe])
        format.html { redirect_to @scheduled_employee, notice: 'Scheduled employe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scheduled_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scheduled_employes/1
  # DELETE /scheduled_employes/1.json
  def destroy
    @scheduled_employee = ScheduledEmployee.find(params[:id])
    @scheduled_employee.destroy

    respond_to do |format|
      format.html { redirect_to employees_url }
      format.json { head :no_content }
    end
  end
end
