class UsersController < ApplicationController
  before_filter :authenticate, :only => [:show]
  before_filter :correct_user, :only => [:show]

  def new
    @user = User.new
    @title = "Sign up"
  end

  def show
    @user = User.find(params[:id])
    @planners = @user.planners
    @title = @user.name
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Finance Planner PRO"
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end

  private

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end

end
