require "http"
require "tty-prompt"
prompt = TTY::Prompt.new

movie_response = HTTP.get("http://localhost:3000/api/all_movies").parse
movie_hash = Hash.new
index = 1

movie_response.each do |movie|
  movie_hash[movie["title"]] = index
  index += 1
end

prompt_response = prompt.select("Choose a movie to get more info:", movie_hash)

selected_movie = HTTP.get("http://localhost:3000/api/select_movie?movie_id=#{prompt_response}").parse
pp selected_movie
