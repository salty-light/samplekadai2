class UsersController < ApplicationController
  def show
   @user = User.find(params[:id])
   @post_images = @user.post_images   
  end

  def edit
  @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice: 'プロフィールが更新されました'
    else
      render :edit
    end
  end
  
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
