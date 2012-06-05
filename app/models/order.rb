class Order < ActiveRecord::Base
  attr_accessible :cauto_id, :client_id
  belongs_to :cauto
  belongs_to :client
  has_many :olists

  def ressum
    return olists.sum { |o| o.slist.ressum }
  end

end
