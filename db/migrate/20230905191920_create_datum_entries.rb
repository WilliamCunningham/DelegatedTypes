class CreateDatumEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :datum_entries do |t|
      t.string :name
      t.datetime :performed_at
      t.boolean :completed
      t.boolean :recorded
      t.integer :duration
      t.integer :datum

      t.timestamps
    end
  end
end
