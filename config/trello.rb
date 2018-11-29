Trello.configure do |config|
  config.developer_public_key = ENV['trello_developer_public_key']
  config.member_token = ENV['trello_authorization_token']
end