class StaticPagesController < ApplicationController
	def home
	end

	def help
	end

	def about
	end

	def contact
		if request.post?
			@success = false
			@error_message = ""

			respond_to do |format|
				format.json { render json: { success: @success, error_message: @error_message }.to_json  }
			end
			
		end
	end
end
