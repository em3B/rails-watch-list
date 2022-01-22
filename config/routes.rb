Rails.application.routes.draw do
  resources :bookmarks
  resources :lists, only: %i[index show create edit update new] do
    resources :bookmarks, only: %i[new create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
