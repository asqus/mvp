class PollOptionsSetsController < ApplicationController
  # GET /poll_options_sets
  # GET /poll_options_sets.json
  def index
    @poll_options_sets = PollOptionsSet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @poll_options_sets }
    end
  end

  # GET /poll_options_sets/1
  # GET /poll_options_sets/1.json
  def show
    @poll_options_set = PollOptionsSet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @poll_options_set }
    end
  end

  # GET /poll_options_sets/new
  # GET /poll_options_sets/new.json
  def new
    @poll_options_set = PollOptionsSet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @poll_options_set }
    end
  end

  # GET /poll_options_sets/1/edit
  def edit
    @poll_options_set = PollOptionsSet.find(params[:id])
  end

  # POST /poll_options_sets
  # POST /poll_options_sets.json
  def create
    @poll_options_set = PollOptionsSet.new(params[:poll_options_set])

    respond_to do |format|
      if @poll_options_set.save
        format.html { redirect_to @poll_options_set, notice: 'Poll options set was successfully created.' }
        format.json { render json: @poll_options_set, status: :created, location: @poll_options_set }
      else
        format.html { render action: "new" }
        format.json { render json: @poll_options_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /poll_options_sets/1
  # PUT /poll_options_sets/1.json
  def update
    @poll_options_set = PollOptionsSet.find(params[:id])

    respond_to do |format|
      if @poll_options_set.update_attributes(params[:poll_options_set])
        format.html { redirect_to @poll_options_set, notice: 'Poll options set was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @poll_options_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poll_options_sets/1
  # DELETE /poll_options_sets/1.json
  def destroy
    @poll_options_set = PollOptionsSet.find(params[:id])
    @poll_options_set.destroy

    respond_to do |format|
      format.html { redirect_to poll_options_sets_url }
      format.json { head :no_content }
    end
  end
end
