class SubmissionsController < ApplicationController
  load_and_authorize_resource
	before_filter :get_bounty
	
	def get_bounty
		@bounty = Bounty.find(params[:bounty_id])
	end
  # GET /submissions
  # GET /submissions.json
  def index
    @submissions = @bounty.submissions.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @submissions }
    end
  end

  # GET /submissions/1
  # GET /submissions/1.json
  def show
    @submission = @bounty.submissions.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @submission }
    end
  end

  # GET /submissions/new
  # GET /submissions/new.json
  def new
    @submission = @bounty.submissions.new
		@uploads = Upload.where(user_id: current_user.id)
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @submission }
    end
  end

  # GET /submissions/1/edit
  def edit
    @submission = @bounty.submissions.find(params[:id])
		@uploads = Upload.where(user_id: current_user.id)
  end

  # POST /submissions
  # POST /submissions.json
  def create
    @submission = @bounty.submissions.new(params[:submission])

    respond_to do |format|
      if @submission.save
        format.html { redirect_to [@bounty, @submission], notice: 'Submission was successfully created.' }
        format.json { render json: @submission, status: :created, location: @submission }
      else
        format.html { render action: "new" }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /submissions/1
  # PUT /submissions/1.json
  def update
    @submission = @bounty.submissions.find(params[:id])

    respond_to do |format|
      if @submission.update_attributes(params[:submission])
        format.html { redirect_to @submission, notice: 'Submission was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submissions/1
  # DELETE /submissions/1.json
  def destroy
    @submission = @bounty.submissions.find(params[:id])
    @submission.destroy

    respond_to do |format|
      format.html { redirect_to bounty_submissions_url }
      format.json { head :no_content }
    end
  end
end
