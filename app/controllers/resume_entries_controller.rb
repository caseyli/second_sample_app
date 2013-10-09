class ResumeEntriesController < ApplicationController
	
	before_action	:set_resume_entry, only: [:show, :edit, :update, :destroy]
	
	def index
		@resume_entries = ResumeEntry.all
	end

	def show
	end
	
	def new
		@resume_entry = ResumeEntry.new
	end
	
	def create
		@resume_entry = ResumeEntry.new(resume_entry_params)
		
		if @resume_entry.save
			redirect_to "/resume_entries/#{@resume_entry.to_param}", notice: 'Resume entry was successfully created.'
    else
			render action: 'new'
    end
	end
	
	def edit
	end
	
	def update
	  if @resume_entry.update(resume_entry_params)
			redirect_to "/resume_entries/#{@resume_entry.to_param}", notice: 'Resume entry was successfully updated.'
	  else
			render action: 'edit'
	  end
	end
	
	def destroy
		@resume_entry.destroy
		redirect_to "/resume_entries"
	end
	
	
	private
		def set_resume_entry
			@resume_entry = ResumeEntry.find(params[:id])
		end
	
		def resume_entry_params
			params.require(:resume_entry).permit(:start_date, :end_date, :description)
		end
	
end
