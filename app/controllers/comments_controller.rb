class CommentsController < ApplicationController
  
  def create
    @commentable = context_object()
    
    @comment = @commentable.comments.build(params[:comment])
    if(params[:comment][:content] == "")
      return
    end
    
    if @comment.save
      render :partial => "questions/showComments.js"
    else
      render :action => 'new'
    end
  end

  private

  def context_object
    params[:constraint][:context_type].singularize.classify.constantize.find( context_id )
  end

  def context_id
    params["#{ params[:constraint][:context_type].singularize }_id"]
  end

end