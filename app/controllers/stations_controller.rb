class StationsController < ApplicationController
  def index
    @stations = Station.all
  end

  def show
    @station = Station.find(params[:id])
  end

  def new
    @station = Station.new
  end

  def edit
    @station = Station.find(params[:id])
  end

  def create
    @station = Station.new(station_params)

    if @station.save
      redirect_to @station
    else
      render "new"
    end
  end

  def update
    @station = Station.find(params[:id])

    if @station.update(station_params)
      redirect_to @station
    else
      render "edit"
    end
  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
    
    redirect_to stations_path
  end

  def show_trains(type)
    
  end

  def send_train
    
  end

  private
  
  def station_params
    params.require(:station).permit(:name)
  end
end
