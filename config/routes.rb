Rails.application.routes.draw do
  get '/manuscripts/search' => 'manuscripts#search'
  post '/manuscripts/:manuscript_id/citations' => 'manuscripts#add_citation'
  post '/manuscripts/:manuscript_id/file' => 'manuscripts#upload_file'

  get '/disciplines' => 'disciplines#index'
  get '/disciplines/top' => 'disciplines#top_level'
  get '/disciplines/:discipline_id/children' => 'disciplines#children'

  get '/current_user' => 'users#current_user'

  resources :manuscripts

  resource :auth, only: %i[create]
end
