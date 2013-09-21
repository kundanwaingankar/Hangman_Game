class UsersController < ApplicationController
  def new
      @user=User.new
      @user.build_profile
  end

  def create
    @user = User.new(user_params)

    if @user.save
      @user.create_game
      redirect_to root_path
    else

    end

  end

  def show

  end

  def edit

  end

  def update

  end

  def play_game

  end

  def user_input

  end

  private
  def user_params
    params.require(:user).permit(:name, :password, profile_attributes: [:id, :first_name, :last_name, :email, :gender])
  end
end
