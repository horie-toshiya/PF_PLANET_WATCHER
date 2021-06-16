Rails.application.routes.draw do
  namespace :admin do
    get 'inquiries/index'
    get 'inquiries/show'
  end
  get 'inquiries/index'
  get 'inquiries/show'
  namespace :admin do
   resources :main_contents
   resources :events

  end
end
