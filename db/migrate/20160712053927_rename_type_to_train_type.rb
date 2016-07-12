class RenameTypeToTrainType < ActiveRecord::Migration
  def change
    rename_column :trains, :type, :train_type
  end
end
