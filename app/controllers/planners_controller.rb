class PlannersController < ApplicationController
  before_filter :authenticate, :only => [:create, :destroy]
  before_filter :authorized_user, :only => :destroy

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
     @planner.destroy
     redirect_back_or root_path
   end

  private

    def authorized_user
      @planner = current_user.planners.find_by_id(params[:id])
      redirect_to root_path if @planner.nil?
    end


end