class CreateDiaryEntries < ActiveRecord::Migration
  def change
    create_table :diary_entries do |t|
      t.string :uuid
      t.string :value

      t.timestamps
    end
  end
end
