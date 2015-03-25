class CreateFeelings < ActiveRecord::Migration
  def change
    create_table :feelings do |t|
      t.string :key

      t.timestamps
    end
  end
end
