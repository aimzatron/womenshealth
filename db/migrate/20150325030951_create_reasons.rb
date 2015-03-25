class CreateReasons < ActiveRecord::Migration
  def change
    create_table :reasons do |t|
      t.string :stage
      t.string :value

      t.timestamps
    end
  end
end
