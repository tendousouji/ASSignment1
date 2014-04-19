App::Application.routes.draw do
  resources :books do
  		resources :categories
  end

  get "welcome/index"
  root to: "welcome#index"
end
