class UqRelationsController < ApplicationController
	def create
		@question = Question.find(params[:uq_relation][:question_id])
		@yaynay = params[:uq_relation][:yaynay]
		@question.vote!(current_user, @yaynay)

		redirect_to current_user
	end

	def destroy
		@question = Question.find(UqRelation.find(params[:id]).question_id)
		@question.unvote!(current_user)

		redirect_to current_user
	end
end
