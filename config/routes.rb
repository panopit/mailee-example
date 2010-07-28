MaileeExample::Application.routes.draw do |map|
  resources :clients
  root :to => "clients#index"
end
