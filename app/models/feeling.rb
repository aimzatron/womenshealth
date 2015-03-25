class Feeling < ActiveRecord::Base
  attr_accessor :key

  has_many :options

  def key
    "I feel"
  end

end
