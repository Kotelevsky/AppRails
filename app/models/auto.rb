class Auto < ActiveRecord::Base
  has_many :cautos
  attr_accessible :name
end
