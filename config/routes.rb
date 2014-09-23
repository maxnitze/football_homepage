Rails.application.routes.draw do
  resources :user_role_permissions

  resources :user_roles

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
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
      registrations: 'registrations' },
    path: '',
    path_names: {
      sign_in:  '/login',
      sign_out: '/logout',
      sign_up:  '/register',
      edit: '/users/edit' }
  match '/users/:id/finish_signup', to: 'users#finish_signup', via: [:get, :patch], as: :finish_signup
  resources :users

  resources :clubs
  resources :coaches
  resources :leagues
  resources :matches
  resources :news
  resources :players
  resources :referees
  resources :teams
end
