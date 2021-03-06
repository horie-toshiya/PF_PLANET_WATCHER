Rails.application.routes.draw do

root to: 'homes#top'
get 'home/top' => 'homes#top'

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
}
  devise_for :customers, controllers: {
  sessions:      'customers/sessions',
  passwords:     'customers/passwords',
  registrations: 'customers/registrations'
}

  scope module: :public do
    resources :main_contents, only: [:index, :show] do
     resource :likes, only: [:create, :destroy]

     resources :main_comments, only: [:create, :destroy]
    end
    resources :events, only: [:index]
    resources :boards do
    resources :board_comments, only: [:create, :destroy]
  end
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
