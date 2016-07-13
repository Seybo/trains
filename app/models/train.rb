class Train < ActiveRecord::Base
  validates :coaches_number, :train_type, presence: true
  validates :speed, numericality: { greater_than_or_equal_to: 0 }
end
