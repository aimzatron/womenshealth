class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :type
      t.string :stage
      t.string :value

      t.timestamps
    end
  end
end
