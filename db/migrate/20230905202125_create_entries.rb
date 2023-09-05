class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.references :activity_id, null: false, foreign_key: true
      t.datetime :performed_at
      t.integer :duration
      t.boolean :recorded

      t.timestamps
    end
  end
end