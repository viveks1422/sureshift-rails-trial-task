class JobPostingsController < ApplicationController
	def new
		@job_posting = JobPosting.new
		respond_to	do |format|
  			format.html
  		end
	end

	def create
		job_posting = JobPosting.new(job_posting_params)
		respond_to do |format|
			format.html{
				if job_posting.save
					flash[:notice] = "Job posting was created successfully"	
				else
					flash[:error]  = job_posting.errors.full_messages.join(', ')
				end
				redirect_to root_path		
			}	
		end	
	end
	#private methods
	private
		def job_posting_params
			params.require(:job_posting).permit(:title, :description, :closing_date)
		end
end
