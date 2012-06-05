class Work < ActiveRecord::Base
  attr_accessible :name
  has_many :slists
  #has_many :spares, :through => :slists
end
