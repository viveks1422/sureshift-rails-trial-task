# README

This is a test application with rails 5

Things you may want to cover:

* Install Ruby version 2.4.0

* Install Rails version 5.2.1

* Install redis-server

* Login to your Trello account and create one board

* Fill ENV vars within application.yml
	1. trello_developer_public_key: `your trello_developer_public_key` goto url to get developer api keys https://trello.com/app-key/

	2. trello_trello_authorization_token: `your trello_authorization_token` with same url you will get https://trello.com/app-key/ authorization_token click on `authorize link` within Token: section just below Key: section

	3. trello_board_id: `your trello_board_id` you can git this id by putting .json at the end of your Trello board url, for an example if you trell board url in browser adddress bar is `https://trello.com/b/xELE3V6t/sureswift` you can add .json at the end like this `https://trello.com/b/xELE3V6t/sureswift.json` to get board id, this id will look like this {"id":"5bff749701a0954086483bbf"} copy the "5bff749701a0954086483bbf" and paste into application.yml

	4. redis_url: `your local redis url`

* goto project root directory and run `bundle install` to install gem dependencies

* run `rails db:create`

* run `rails db:migrate`

* run `rails server` to run puma rack server

* run `bundle exec sidekiq` to start sidekiq workers

* goto browser and locate 'http://localhost:3000'

* Cheers! all done