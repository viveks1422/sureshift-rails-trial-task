# == Schema Information
#
# Table name: job_applications
#
#  id              :integer          not null, primary key
#  candidate_name  :string
#  candidate_email :string
#  cover_letter    :text
#  job_posting_id  :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class JobApplication < ApplicationRecord
	belongs_to :job_posting
	after_create :create_trello_job_application
	# methods
	def create_trello_job_application
		TrelloJobApplicationWorker.perform_async(candidate_name, job_posting.trello_id, id)	
	end
end
