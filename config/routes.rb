Rails.application.routes.draw do

root to: 'homes#top'

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}
devise_for :customers, controllers: {
  sessions:      'customers/sessions',
  passwords:     'customers/passwords',
  registrations: 'customers/registrations'
}

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
