class Train < ActiveRecord::Base
  validates :coaches_number, :train_type, presence: true
end
