MaileeExample::Application.routes.draw do |map|
  resources :mailee_messages do
    member do
      post :ready
      post :test
    end
  end

  resources :mailee_lists

  resources :mailee_templates

  resources :mailee_contacts

  resources :clients
  root :to => "clients#index"
end
