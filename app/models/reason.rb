class Reason < ActiveRecord::Base
  attr_accessor :key

  has_many :options

  def key
    "because"
  end

end
