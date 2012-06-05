class Warehouse < ActiveRecord::Base
  attr_accessible :name
  has_many :orderspares
end
