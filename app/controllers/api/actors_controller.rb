class Api::ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render "index.json.jb"
  end

  def show
    id = params[:id]
    @actor = Actor.find(id)
    render "show.json.jb"
  end
end
