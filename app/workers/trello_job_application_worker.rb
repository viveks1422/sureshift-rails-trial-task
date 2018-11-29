class TrelloJobApplicationWorker
  include Sidekiq::Worker
  sidekiq_options retry: false
  def perform(job_application_name, trello_list_id, application_id)
  	trello = TrelloService.new
  	trello.create_job_application(job_application_name, trello_list_id, application_id)
  end
end