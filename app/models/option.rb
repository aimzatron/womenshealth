class Option < ActiveRecord::Base
  belongs_to :actions, :feelings, :reasons
end
