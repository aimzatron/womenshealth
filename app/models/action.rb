class Action < ActiveRecord::Base
  attr_accessor :key

  has_many :options

  def key
    "so I"
  end
end
