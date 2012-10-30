class UqRelationsController < ApplicationController
	def create
		@question = Question.find(params[:uq_relation][:question_id])
		@yaynay = params[:uq_relation][:yaynay]
		current_user.vote!(@question, @yaynay)

		redirect_to current_user
	end

	def destroy
		@question = Question.find(UqRelation.find(params[:id]).question_id)
		current_user.unvote!(@question)

		redirect_to current_user
	end
end
