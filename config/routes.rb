Rails.application.routes.draw do
  
  get "/projects", to: "project#index"

  # root "articles#index"
end
