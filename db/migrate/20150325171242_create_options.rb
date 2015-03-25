class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :value
      t.belongs_to :action
      t.belongs_to :reason
      t.belongs_to :feeling

      t.timestamps
    end
  end
end
