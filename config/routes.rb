Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :manuscripts

  post '/manuscripts/:manuscript_id/citations' => 'manuscripts#add_citation'
  get '/disciplines' => 'disciplines#index'
  get '/disciplines/top' => 'disciplines#top_level'
  get '/disciplines/:discipline_id/children' => 'disciplines#children'
end
