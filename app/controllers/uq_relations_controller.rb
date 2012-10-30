class UqRelationsController < ApplicationController
	def create
		@question = Question.find(params[:uq_relation][:question_id])
		@yaynay = params[:uq_relation][:yaynay]
		current_user.vote!(@question, @yaynay)

		redirect_to questions_path
	end

	def update
		@uq = UqRelation.find(params[:id])

		@uq.update_attributes(params[:uq_relation])
		redirect_to questions_path
	end

	def destroy
		@uq = UqRelation.find(params[:id])
		@uq.destroy

		redirect_to questions_path
	end
end
