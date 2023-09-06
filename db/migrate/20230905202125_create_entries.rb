class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.references :activity_id, null: false, foreign_key: true
      t.datetime :performed_at
      t.integer :duration
      t.string :status, default: :open
      t.bigint :entryable_id
      t.string :entryable_type

      t.timestamps
    end
    add_index :entries, [:entryable_id, :entryable_type]
  end
end
