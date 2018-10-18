class PlayersController < ApplicationController
  before_action :find_player, only: [:show, :edit, :update, :destroy]
  # We limit find_player as a before_all to these 4 actions because they're the only ones that require us to find a specific player.
  def index
    @players = Player.all
  end


  def show
  end


  def new
    @player = Player.new
    @teams = Team.all
  end


  def create
    @player = Player.new(player_params)
    if @player.valid?
      # Good to go
      @player.save
      redirect_to player_path(@player)
    else
      # Flash render
      redirect_to new_player_path
    end
  end


  def edit
    @teams = Team.all
  end


  def update
    redirect_to player_path
  end


  def destroy

  end

  private

  def player_params
    params.require(:player).permit(:name, :jersey_number, :foreigner, :team_id)
  end

  def find_player
    @player = Player.find(params[:id])
  end
end
