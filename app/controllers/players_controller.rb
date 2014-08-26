class PlayersController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    render json: Player.all.order("ppg DESC")
  end

  def show
    render json: Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    @player.update(params.require(:player).permit([:on_team, :available]))
    render json: @player
  end
  def draft

  end
end
