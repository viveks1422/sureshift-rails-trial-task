class DashboardController < ApplicationController
  # action to fetch all trello dashboards
  def index
  	@job_postings = JobPosting.all
  	respond_to	do |format|
  		format.html
  	end
  end
end
