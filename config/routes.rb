Rails.application.routes.draw do
  devise_for :users
  resources :activiteiten
  get 'pages/info'

	root to: redirect('/activiteiten')
  	resources :activiteiten
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
