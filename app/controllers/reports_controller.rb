class ReportsController < ApplicationController
  before_filter :authenticate
  def create
    @report  = current_user.reports.build(params[:report])
    if @report.save
      flash[:success] = "Report was created!"
      redirect_to root_path
    else
      render 'pages/home'
    end
  end

  def destroy
  end

end
