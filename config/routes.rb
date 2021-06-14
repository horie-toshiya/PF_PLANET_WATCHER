Rails.application.routes.draw do
  namespace :admin do
    resources :main_contents
  end
end
