class Slist < ActiveRecord::Base
  belongs_to :spare
  belongs_to :work
  has_many :olists
  attr_accessible :count, :spare_id, :work_id

  def name
    return work.name
  end

  def ressum
    return spare.price * count
  end
end
