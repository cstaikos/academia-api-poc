Rails.application.routes.draw do
  get '/manuscripts/search' => 'manuscripts#search'
  post '/manuscripts/:manuscript_id/citations' => 'manuscripts#add_citation'

  get '/disciplines' => 'disciplines#index'
  get '/disciplines/top' => 'disciplines#top_level'
  get '/disciplines/:discipline_id/children' => 'disciplines#children'

  resources :manuscripts

end
