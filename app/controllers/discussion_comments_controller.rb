class DiscussionCommentsController < ApplicationController
	load_and_authorize_resource
	before_filter :get_bounty
	
	def get_bounty
		@bounty = Bounty.find(params[:bounty_id])
	end
  # GET /discussion_comments
  # GET /discussion_comments.json
  def index
    @discussion_comments = DiscussionComment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @discussion_comments }
    end
  end

  # GET /discussion_comments/1
  # GET /discussion_comments/1.json
  def show
    @discussion_comment = DiscussionComment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @discussion_comment }
    end
  end

  # GET /discussion_comments/new
  # GET /discussion_comments/new.json
  def new
    @discussion_comment = DiscussionComment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @discussion_comment }
    end
  end

  # GET /discussion_comments/1/edit
  def edit
    @discussion_comment = DiscussionComment.find(params[:id])
  end

  # POST /discussion_comments
  # POST /discussion_comments.json
  def create
    @discussion_comment = DiscussionComment.new(params[:discussion_comment])

    respond_to do |format|
      if @discussion_comment.save
        format.html { redirect_to @bounty, notice: 'Discussion comment was successfully created.' }
        format.json { render json: @discussion_comment, status: :created, location: @discussion_comment }
      else
        format.html { render action: "new" }
        format.json { render json: @discussion_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /discussion_comments/1
  # PUT /discussion_comments/1.json
  def update
    @discussion_comment = DiscussionComment.find(params[:id])

    respond_to do |format|
      if @discussion_comment.update_attributes(params[:discussion_comment])
        format.html { redirect_to @bounty, notice: 'Discussion comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @discussion_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discussion_comments/1
  # DELETE /discussion_comments/1.json
  def destroy
    @discussion_comment = DiscussionComment.find(params[:id])
    @discussion_comment.destroy

    respond_to do |format|
      format.html { redirect_to bounty_discussion_comments_url }
      format.json { head :no_content }
    end
  end
end
