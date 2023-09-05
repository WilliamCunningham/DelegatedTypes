class CreateBooleanEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :boolean_entries do |t|
      t.string :name
      t.datetime :performed_at
      t.boolean :completed
      t.boolean :recorded
      t.integer :duration

      t.timestamps
    end
  end
end
