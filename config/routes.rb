Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "people#index"

  resources :comments do
    collection do
      get 'user_comments', as: :user
    end
  end
end
