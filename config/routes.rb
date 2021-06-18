Rails.application.routes.draw do
  scope module: :public do
    resources :main_contents, only: [:index, :show]
    resources :events, only: [:index]
    resources :boards
    resources :inquiries, only: [:index, :new, :create,]
    get 'inquiries/complete'
  end
  namespace :admin do
   resources :main_contents
   resources :events
   resources :boards, only: [:index, :show, :destroy]
   resources :inquiries, only: [:index, :show]
  end
end
