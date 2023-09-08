class CreateDatumEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :datum_entries do |t|
      t.integer :datum

      t.timestamps
    end
  end
end
