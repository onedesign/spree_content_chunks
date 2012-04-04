Spree::Core::Engine.routes.append do
  namespace :admin do
    resources :content_chunks
  end
end
