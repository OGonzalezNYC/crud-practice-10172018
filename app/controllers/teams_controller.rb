class TeamsController < ApplicationController
  before_action :find_team, only: [:show, :edit, :update, :destroy]
  def index
    @teams = Team.all
  end

  def show
    #byebug
  end

  def new
    @team = Team.new
    @players = Player.all
  end

  def create
    @team = Team.new(team_params)
    if @team.valid?
      @team.save
      redirect_to team_path(@team)
    else
      # Flash render
      redirect_to new_team_path
    end
  end

  def edit
    @players = Player.all
  end


  def update
    redirect_to team_path
  end


  def destroy

  end


  private

  def team_params
    params.require(:team).permit(:name, :city)
  end

  def find_team
    @team = Team.find(params[:id])
  end

end
