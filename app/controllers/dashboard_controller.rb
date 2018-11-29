class DashboardController < ApplicationController
  # action to fetch all trello dashboards
  def index
  	@dasboard = Trello::Board.find(ENV['trello_board_id'])
  	respond_to	do |format|
  		format.html	
  	end
  end
end
