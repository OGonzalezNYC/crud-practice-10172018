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
    #@players = Player.all
  end

  def create
    @team = Team.new(team_params)
    if @team.valid?
      @team.save
      redirect_to team_path(@team)
    else
      flash[:errors] = @team.errors.full_messages
      redirect_to new_team_path
    end
  end

  def edit
    #@players = Player.all
  end


  def update
    @team.update(team_params)
    if @team.valid?
      redirect_to team_path(@team)
    else
      flash[:errors] = @team.errors.full_messages
      redirect to edit_team_path(@team)
    end
  end


  def destroy
    @team.destroy
    redirect_to teams_path
  end


  private

  def team_params
    params.require(:team).permit(:name, :city)
  end

  def find_team
    @team = Team.find(params[:id])
  end

end
