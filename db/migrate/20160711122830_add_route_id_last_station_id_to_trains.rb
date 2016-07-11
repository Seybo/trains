class AddRouteIdLastStationIdToTrains < ActiveRecord::Migration
  def change
    add_column :trains, :route_id, :integer
    add_column :trains, :last_station_id, :integer
  end
end
