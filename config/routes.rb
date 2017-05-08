# frozen_string_literal: true
Rails.application.routes.draw do
  resources :repo_tags, except: [:new, :edit]
  resources :tags, except: [:new, :edit]
  resources :repos, except: [:new, :edit]

  post 'repos/populate'         => 'repos#populate'
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
