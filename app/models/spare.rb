class Spare < ActiveRecord::Base
  attr_accessible :description, :name, :price
  has_many :slists
  has_many :orderspares
  #has_many :works, :through => :slists

  def count_of_warehouse
    inp = orderspares.where(:flag_id => 2).sum { |o| o.count }
    out = orderspares.where(:flag_id => 3).sum { |o| o.count }
    return inp - out
  end
end
