# == Schema Information
#
# Table name: job_postings
#
#  id           :integer          not null, primary key
#  title        :string
#  description  :text
#  closing_date :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class JobPosting < ApplicationRecord
	has_many :job_applications, dependent: :destroy
	after_create :create_trello_job_posting
	validates :title , uniqueness: true
	# methods
	def expired?
		closing_date < Date.today
	end

	def create_trello_job_posting
		TrelloJobPostingWorker.perform_async(title, id)
	end
end
