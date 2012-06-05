class Cauto < ActiveRecord::Base
  belongs_to :auto
  belongs_to :user
  has_many :orders
  attr_accessible :auto_id, :client_id, :mileage, :year

  def name
    return auto.name
  end
end
