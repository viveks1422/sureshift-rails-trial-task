class TrelloService
	# to create job posting
	def create_job_posting(job_posting_name, list_id)
		begin
			trello_list = Trello::List.new({name: job_posting_name, board_id: ENV['trello_board_id']})
			trello_list.save
			job_posting = JobPosting.find(list_id)
			job_posting.update_attribute(:trello_id, trello_list.id)
		rescue StandardError => err
			Rails.logger.info(err)
		end
		
	end

	def create_job_application(job_application_name, trello_list_id, application_id)
		begin
			trello_card = Trello::Card.new({name: job_application_name, list_id: trello_list_id, board_id: ENV['trello_board_id']})
			trello_card.save
			job_application = JobApplication.find(application_id)
			job_application.update_attribute(:trello_id, trello_card.id)
		rescue StandardError => err
			Rails.logger.info(err)
		end
	end
end