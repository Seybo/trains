class TrainsController < ApplicationController
  def index
    @trains = Train.all  
  end

  def show
    @train = Train.find(params[:id])  
  end

  def new
    @train = Train.new
  end

  def edit
    
  end

  def create
    @train = Train.new(train_params)
    @train.save

    redirect_to @train
  end

  def update
    
  end

  private
  
  def train_params
    params.require(:train).permit(:train_type, :coaches_number)
  end
end
