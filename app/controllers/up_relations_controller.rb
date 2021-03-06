class UpRelationsController < ApplicationController
  def create
    @poll = Poll.find(params[:up_relation][:poll_id])
    @updown = params[:up_relation][:updown]
    current_user.votepoll!(@poll, @updown)

    respond_to do |format|
      format.html { redirect_to polls_path }
      format.js { render "render"}
    end
  end

  def answer
    @uprel = UpRelation.find_or_create_by_user_id_and_poll_id(current_user.id, params[:poll_id])
    @uprel.update_attributes(:answer_value => params[:answer])
    @poll = Poll.find(params[:poll_id])

    render :partial => "renderPAjs.js", :locals => { :poll => @poll }
#    respond_to do |format|
#      format.html { redirect_to @poll }
#      format.js { render "renderPollAnswers" }
#      format.mobile { render "renderPollAnswers" }
#    end
  end

  def result
    @poll = Poll.find(params[:poll_id])

    render :partial => "showChart.js", :locals => { :poll => @poll}
    # respond_to do |format|
    #   format.html { redirect_to @poll }
    #   format.js { render "showChart" }
    # end
  end

  def update
    @up = UpRelation.find(params[:id])
    @poll = Poll.find(@up.poll_id)
    @up.update_attributes(params[:up_relation])
    
    respond_to do |format|
      format.html { redirect_to polls_path }
      format.js { render "render"}
    end
  end

  def destroy
    @up = UpRelation.find(params[:id])
    @poll = Poll.find(@up.poll_id)
    @up.destroy

    respond_to do |format|
      format.html { redirect_to polls_path }
      format.js { render "render"}
    end
  end
end
