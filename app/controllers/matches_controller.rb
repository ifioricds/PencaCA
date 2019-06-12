class MatchesController < ApplicationController
  def index
    @matches = Match.all.includes(:country_1, :country_2)
  end

  def show
    @match = Match.find(params[:id])
  end

  def create
    match = Match.create(match_params)
    redirect_to matches_path
  end

  def update
    @match = Match.find(params[:id])
    @match.update(match_params)
    redirect_to matches_path(@match)
  end

  def destroy
    @match = Match.find(params[:id])
    @match.destroy

    redirect_to matches_path
  end

  private

  def match_params
    params.require(:match).permit(:date, :phase, :group, :score_1, :score2, :country_1_id, :country_2_id)
  end
end
