Rails.application.routes.draw do
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
  mount Attachinary::Engine => "/attachinary"
  resources :cocktails, only: [:show, :new, :create] do
    resources :doses, only: [:create, :destroy], shallow: true
  end

end




