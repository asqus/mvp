# In the future, we want to save if they rate the poll and then unrate it
class UqRelationsController < ApplicationController
  def create
    @question = Question.find(params[:uq_relation][:question_id])
    @yaynay = params[:uq_relation][:yaynay]
    current_user.voteQ!(@question, @yaynay)

    if @yaynay == "true"
      @question.upCache = @question.upCache + 1
    else
      @question.downCache = @question.downCache + 1
    end
    @question.update_attributes(:upCache => @question.upCache, :downCache => @question.downCache)

    @question.calcRank

    respond_to do |format|
      format.html { redirect_to questions_path }
      format.js { render "render"}
    end
  end

  def update
    @uq = UqRelation.find(params[:id])
    @question = Question.find(@uq.question_id)
    @uq.update_attributes(params[:uq_relation])

    if @uq.yaynay
      @question.upCache = @question.upCache + 1
      @question.downCache = @question.downCache - 1
    else
      @question.upCache = @question.upCache - 1
      @question.downCache = @question.downCache + 1
    end
    @question.update_attributes(:upCache => @question.upCache, :downCache => @question.downCache)

    @question.calcRank

    respond_to do |format|
      format.html { redirect_to questions_path }
      format.js { render "render"}
    end
  end

  def destroy
    @uq = UqRelation.find(params[:id])
    @question = Question.find(@uq.question_id)
    
    if @uq.yaynay
      @question.upCache = @question.upCache - 1
    else
      @question.downCache = @question.downCache - 1
    end
    @question.update_attributes(:upCache => @question.upCache, :downCache => @question.downCache)
    
    @question.calcRank

    @uq.destroy

    respond_to do |format|
      format.html { redirect_to questions_path }
      format.js { render "render"}
    end
  end
end
