Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/all_actors" => "actors#all_actors_action"
    get "/all_movies" => "movies#all_movies_action"
    get "/random_movie" => "movies#random_movie_action"
    get "/select_movie" => "movies#select_movie_action"
  end
end
