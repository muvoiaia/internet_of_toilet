Rails.application.routes.draw do
  resources :devises
  resources :rooms

  Rails.application.routes.draw do
    mount API => '/'
  end
end
