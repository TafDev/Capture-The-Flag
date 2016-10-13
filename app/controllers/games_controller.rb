class GamesController < ApplicationController

  def home

  end

  def index
    @games = Game.all
    @game = Game.new
    # @users = User.all
  end

  def create
    my_games_params = games_params.to_h
    # my_games_params = my_games_params.merge(creator: current_user.id)
    event = Event.new(my_games_params)
    flash[:notice] = "#{game.name} created successfully!" if game.save
    render json: event
  end

  def show
    @game = Game.find(params[:id])
    # @players = @game.sessions
  end

end