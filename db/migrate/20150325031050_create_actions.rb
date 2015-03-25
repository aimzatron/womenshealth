class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string :stage
      t.string :value

      t.timestamps
    end
  end
end
