Rails.application.routes.draw do
  root 'general_static_pages#home'

  match '/contact', to: 'general_static_pages#contact', via: 'get'
  match '/help', to: 'general_static_pages#help', via: 'get'
  match '/home', to: 'general_static_pages#home', via: 'get'
  match '/notice', to: 'general_static_pages#site_notice', via: 'get'

  match '/field', to: 'club_static_pages#field', via: 'get'
  match '/history', to: 'club_static_pages#history', via: 'get'
  match '/management', to: 'club_static_pages#management', via: 'get'

  devise_for :users,
              controllers: {
                omniauth_callbacks: 'omniauth_callbacks',
                registrations: 'registrations'
              }
  match '/users/:id/finish_signup', to: 'users#finish_signup', via: [:get, :patch], as: :finish_signup

  resources :coaches
  resources :clubs
  resources :referees
  resources :players
  resources :teams
end
