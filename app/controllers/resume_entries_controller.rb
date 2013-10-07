class ResumeEntriesController < ApplicationController
	
	def index
		@resume_entries = ResumeEntry.all
	end
	
	def new
		@resume_entry = ResumeEntry.new
	end
	
	def create
		@resume_entry = ResumeEntry.new
		redirect_to "/resume_entries"
	end
	
	
	private
		def resume_entry_params
		
		
		end
	
end
