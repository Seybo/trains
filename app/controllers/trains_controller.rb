class TrainsController < ApplicationController
  def new
    
  end

  def create
    @train = Train.new(params[:train])
    # @train.save

    redirect_to @train
  end

  private
  
  def user_params
    params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password)
  end
end
