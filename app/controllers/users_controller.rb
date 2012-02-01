class UsersController < ApplicationController

  def new
    @user = User.new
    @title = "Sign up"
  end

  def show
    @user = User.find(params[:id])
    @reports = @user.reports
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

    def authenticate
      deny_access unless signed_in?
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end

end
