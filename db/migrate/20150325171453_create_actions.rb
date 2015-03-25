class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string :key

      t.timestamps
    end
  end
end
