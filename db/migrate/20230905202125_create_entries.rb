class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.references :activity, null: false, foreign_key: true
      t.references :entryable, polymorphic: true
      t.datetime :performed_at
      t.integer :duration
      t.bigint :status, default: :pending

      t.timestamps
    end
  end
end
