Rails.application.routes.draw do
  resources :topics
  resources :blogs do
    collection do
      post :confirm
    end
  end
end
