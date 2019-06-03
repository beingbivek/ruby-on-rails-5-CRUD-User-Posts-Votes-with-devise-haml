Rails.application.routes.draw do
  devise_for :users
  	devise_scope :user do 
  		get '/users/sign_out' => 'devise/sessions#destroy'
	end
	resources :posts do
		member do
			get "like", to: "posts#upvote"
			get "dislike", to: "posts#downvote"
		end
		resources :comments
	end

	root 'posts#index'
end
