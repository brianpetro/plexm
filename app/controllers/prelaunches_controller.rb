class PrelaunchesController < ApplicationController
  # GET /prelaunches
  # GET /prelaunches.json
  def index
    @prelaunches = Prelaunch.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prelaunches }
    end
  end

  # GET /prelaunches/1
  # GET /prelaunches/1.json
  def show
    @prelaunch = Prelaunch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prelaunch }
    end
  end

  # GET /prelaunches/new
  # GET /prelaunches/new.json
  def new
    @prelaunch = Prelaunch.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prelaunch }
    end
  end

  # GET /prelaunches/1/edit
  def edit
    @prelaunch = Prelaunch.find(params[:id])
  end

  # POST /prelaunches
  # POST /prelaunches.json
  def create
    @prelaunch = Prelaunch.new(params[:prelaunch])

    respond_to do |format|
      if @prelaunch.save
        format.html { redirect_to @prelaunch, notice: 'Prelaunch was successfully created.' }
        format.json { render json: @prelaunch, status: :created, location: @prelaunch }
      else
        format.html { render action: "new" }
        format.json { render json: @prelaunch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prelaunches/1
  # PUT /prelaunches/1.json
  def update
    @prelaunch = Prelaunch.find(params[:id])

    respond_to do |format|
      if @prelaunch.update_attributes(params[:prelaunch])
        format.html { redirect_to @prelaunch, notice: 'Prelaunch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prelaunch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prelaunches/1
  # DELETE /prelaunches/1.json
  def destroy
    @prelaunch = Prelaunch.find(params[:id])
    @prelaunch.destroy

    respond_to do |format|
      format.html { redirect_to prelaunches_url }
      format.json { head :no_content }
    end
  end
end
