Rails.application.routes.draw do
  root 'dashboard#index'
  resources :job_postings, only: [:new, :create] do
  	resources :job_applications, only: [:index, :new, :create]
  end
end