class PlannersController < ApplicationController
  before_filter :authenticate

  def create
    @planner  = current_user.planners.build(params[:planner])
    if @planner.save
      flash[:success] = "Report created!"
      redirect_to root_path
    else
      render 'pages/home'
    end
  end

  def destroy

  end


end