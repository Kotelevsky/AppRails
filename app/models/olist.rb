class Olist < ActiveRecord::Base
  attr_accessible :order_id, :slist_id

  belongs_to :order
  belongs_to :slist

  def name
    return slist.work.name
  end

end
