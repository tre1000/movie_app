class Api::ActorsController < ApplicationController
  def all_actors_action
    @actors = Actor.all
    render "all_actors.json.jb"
  end
end
