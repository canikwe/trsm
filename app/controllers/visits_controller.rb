class VisitsController < ApplicationController

  def new
    @visit = Visit.new()
  end

  def create
    @visit = Visit.create(strong_params)
    redirect_to user_path(@visit.user)
  end

  def destroy
    visit = Visit.find(params[:id])
    user = visit.user
    visit.destroy
    redirect_to user_path(user)
  end

  private

  def strong_params
    params.require(:visit).permit(:user_id, :location_id)
  end

end
