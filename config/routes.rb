Rails.application.routes.draw do
  namespace :public do
    get 'inquiries/index'
    get 'inquiries/complete'
  end
  namespace :public do
    get 'boards/index'
    get 'boards/show'
  end
  namespace :public do
    get 'events/index'
  end
  namespace :public do
    get 'main_contents/index'
    get 'main_contents/show'
  end
  namespace :admin do
   resources :main_contents
   resources :events
   resources :boards
   resources :inquiries
  end
end
