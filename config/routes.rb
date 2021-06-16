Rails.application.routes.draw do
  namespace :admin do
   resources :main_contents
   resources :events
   resources :boards
   resources :inquiries
  end
end
