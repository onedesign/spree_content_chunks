Rails.application.routes.draw do
  namespace :admin do
    resources :content_chunks
  end
end
