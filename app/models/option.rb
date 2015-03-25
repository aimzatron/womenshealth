class Option < ActiveRecord::Base
  belongs_to :actions
  belongs_to :feelings
  belongs_to :reasons
end
