class UpRelationsController < ApplicationController
	def create
		@poll = Poll.find(params[:up_relation][:poll_id])
		@updown = params[:up_relation][:updown]
<<<<<<< HEAD
		current_user.votepoll!(@poll, @updown)
=======
		current_user.votePoll!(@poll, @updown)
>>>>>>> 3f81605365e548617d1ae0c32dff72eccb8b2efb

		respond_to do |format|
			format.html { redirect_to polls_path }
			format.js { render "render"}
		end
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
