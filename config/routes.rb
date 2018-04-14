Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :miniblogs do
    # collection do
      post :confirm, on: :collection
    # end
  end

  root to: 'miniblogs#index'

end
