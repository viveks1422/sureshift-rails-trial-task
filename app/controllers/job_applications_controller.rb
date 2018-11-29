class JobApplicationsController < ApplicationController
	before_action :find_job_posting

	def index
		@job_applications = @job_posting.job_applications
		respond_to	do |format|
  			format.html
  		end
	end

	def new
		@job_application = @job_posting.job_applications.build
		respond_to	do |format|
  			format.html
  		end
	end

	def create
		job_application = @job_posting.job_applications.new(job_application_params)
		respond_to do |format|
			format.html{
				if job_application.save
					flash[:notice] = "Job application was created successfully"	
				else
					flash[:error]  = job_application.errors.full_messages.join(', ')
				end
				redirect_to job_posting_job_applications_path		
			}	
		end	
	end
	#private methods
	private
		def job_application_params
			params.require(:job_application).permit(:candidate_name, :candidate_email, :cover_letter)
		end

		def find_job_posting
			@job_posting = JobPosting.find(params[:job_posting_id])
		end
end
