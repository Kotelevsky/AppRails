class Orderspare < ActiveRecord::Base
  attr_accessible :count, :spare_id, :flag_id, :warehouse_id
  belongs_to :spare
  belongs_to :warehouse
  belongs_to :flag
end
