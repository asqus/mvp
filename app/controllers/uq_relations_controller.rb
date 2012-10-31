class UqRelationsController < ApplicationController
	def create
		@question = Question.find(params[:uq_relation][:question_id])
		@yaynay = params[:uq_relation][:yaynay]
		current_user.vote!(@question, @yaynay)

		respond_to do |format|
			format.html { redirect_to questions_path }
			format.js
		end
	end

	def update
		@uq = UqRelation.find(params[:id])

		@uq.update_attributes(params[:uq_relation])
		
		respond_to do |format|
			format.html { redirect_to questions_path }
			format.js
		end
	end

	def destroy
		@uq = UqRelation.find(params[:id])
		@uq.destroy

		respond_to do |format|
			format.html { redirect_to questions_path }
			format.js
		end
	end
end
