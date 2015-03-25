class CreateFeelings < ActiveRecord::Migration
  def change
    create_table :feelings do |t|
      t.string :stage
      t.string :value

      t.timestamps
    end
  end
end
