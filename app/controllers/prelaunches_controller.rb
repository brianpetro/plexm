class PrelaunchesController < ApplicationController
  # GET /prelaunches
  # GET /prelaunches.json

  # GET /prelaunches/new
  # GET /prelaunches/new.json
  def index
    @prelaunch = Prelaunch.new
    @prelaunches = Prelaunch.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prelaunch }
    end
  end

  # GET /prelaunches/1/edit

  # POST /prelaunches
  # POST /prelaunches.json
  def create
    @prelaunch = Prelaunch.new(params[:prelaunch])

    respond_to do |format|
      if @prelaunch.save
        format.html { redirect_to prelaunches_path, notice: 'Your are on the list!' }
        format.json { render json: @prelaunch, status: :created, location: @prelaunch }
      else
        format.html { redirect_to prelaunches_path, flash: { error: 'You failed to enter YOUR email or you are already waiting.'} }
        format.json { render json: @prelaunch.errors, status: :unprocessable_entity }
      end
    end
  end


end
