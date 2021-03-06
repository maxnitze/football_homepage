Rails.application.routes.draw do
  get 'tags/show'

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'

  devise_for :users,
    skip: [:session, :password, :registration, :confirmation],
    controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root 'general_static_pages#home'

    match '/admin', to: 'administration#index', via: [:get]

    match '/contact', to: 'general_static_pages#contact', via: [:get]
    match '/help', to: 'general_static_pages#help', via: [:get]
    match '/home', to: 'general_static_pages#home', via: [:get]
    match '/notice', to: 'general_static_pages#site_notice', via: [:get]

    match '/field', to: 'club_static_pages#field', via: [:get]
    match '/history', to: 'club_static_pages#history', via: [:get]
    match '/management', to: 'club_static_pages#management', via: [:get]

    match '/gallery', to: 'media_static_pages#gallery', via: [:get]
    match '/downloads', to: 'media_static_pages#downloads', via: [:get]
    match '/bettinggame', to: 'media_static_pages#bettinggame', via: [:get]

    match 'omniauth/:provider', to: 'omniauth#localized', via: [:get, :patch], as: :localized_omniauth
    devise_for :users,
      skip: :omniauth_callbacks,
      path: '',
      path_names: {
        sign_in:  '/login',
        sign_out: '/logout',
        sign_up:  '/register',
        edit: '/users/edit' }
    match '/users/:id/finish_signup', to: 'users#finish_signup', via: [:get, :patch], as: :finish_signup

    resources :users
    resources :user_roles
    resources :user_role_permissions

    resources :news
    match '/tags/:tag', to: 'tags#show', via: [:get]

    resources :clubs
    resources :coaches
    resources :leagues
    resources :league_teams
    resources :matches
    resources :players
    resources :referees
    resources :teams
    match '/teams/:id/league/:lid', to: 'teams#show', via: [:get, :patch]
  end
end
