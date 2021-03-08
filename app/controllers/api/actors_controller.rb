class Api::ActorsController < ApplicationController
  def index
    @actors = Actor.all.order(:age => :desc)
    render "index.json.jb"
  end

  def show
    id = params[:id]
    @actor = Actor.find(id)
    render "show.json.jb"
  end

  def update
    id = params[:id]
    @actor = Actor.find(id)

    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.gender = params[:gender] || @actor.gender
    @actor.age = params[:age] || @actor.age

    @actor.save

    #happy/sad path
    if @actor.save
      render "show.json.jb"
    else
      render json: { errors: @actor.errors.full_messages }, status: 406
    end
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age],
    )
    @actor.save

    #happy/sad path
    if @actor.save
      render "show.json.jb"
    else
      render json: { errors: @actor.errors.full_messages }, status: 406
    end
  end
end
