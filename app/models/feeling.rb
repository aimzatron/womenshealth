class Feeling < ActiveRecord::Base

  def pregnant
    pregnancy_array = Array.new
    Feeling.all.each do |feel|
      if feel.stage == "pregnant"
        pregnancy_array << feel.value
      end
    end
    pregnancy_array
  end
end
