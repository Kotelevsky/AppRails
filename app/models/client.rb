class Client < ActiveRecord::Base
  attr_accessible :addres, :name, :phone
  has_many :cautos
  has_many :orders
end
