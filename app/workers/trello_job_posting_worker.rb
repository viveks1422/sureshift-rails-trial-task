class TrelloJobPostingWorker
  include Sidekiq::Worker
  sidekiq_options retry: false
  def perform(job_posting_name, list_id)
  	trello = TrelloService.new
  	trello.create_job_posting(job_posting_name, list_id)
  end
end