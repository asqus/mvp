# In the future, we want to save if they rate the poll and then unrate it
class UqRelationsController < ApplicationController
  def create
    @question = Question.find(params[:uq_relation][:question_id])
    @yaynay = params[:uq_relation][:yaynay]
    current_user.voteQ!(@question, @yaynay)

    if @yaynay == "true"
      @question.up_cache = @question.up_cache + 1
    else
      @question.down_cache = @question.down_cache + 1
    end
    @question.update_attributes(:up_cache => @question.up_cache, :down_cache => @question.down_cache)

    @question.calcRank
    @question.calcControversy

    respond_to do |format|
      format.html { redirect_to questions_path }
      format.js { render "render"}
    end
  end

  def update
    @uq = UqRelation.find(params[:id])
    @question = Question.find(@uq.question_id)
    if(params[:uq_relation])
      if(@uq.yaynay)
        @uq.destroy
      else
        @uq.update_attributes(:yaynay => 'true')
      end
    else
      if(@uq.yaynay == false)
        @uq.destroy
      else 
        @uq.update_attributes(:yaynay => 'false')
      end
    end

    @question.up_cache = UqRelation.where("yaynay = ? AND question_id = ?",true,@question.id).count
    @question.down_cache = UqRelation.where("yaynay = ? AND question_id = ?",false,@question.id).count
    @question.update_attributes(:up_cache => @question.up_cache, :down_cache => @question.down_cache)

    @question.calcRank
    @question.calcControversy

    respond_to do |format|
      #format.html { redirect_to questions_path }
      format.js {render "render"}
      format.mobile {render "render"}
    end
  end

  def destroy
    @uq = UqRelation.find(params[:id])
    @question = Question.find(@uq.question_id)
    
    if @uq.yaynay
      @question.up_cache = @question.up_cache - 1
    else
      @question.down_cache = @question.down_cache - 1
    end
    @question.update_attributes(:up_cache => @question.up_cache, :down_cache => @question.down_cache)
    
    @question.calcRank
    @question.calcControversy
    
    @uq.destroy

    respond_to do |format|
      format.html { redirect_to questions_path }
      format.js { render "render"}
    end
  end




end
