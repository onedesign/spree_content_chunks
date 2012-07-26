Spree::Core::Engine.routes.append do
  namespace :admin do
    resources :content_chunks do
      collection do
        post :update_positions
      end
    end
  end
end
