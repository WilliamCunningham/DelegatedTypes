class CreateBooleanEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :boolean_entries do |t|
      t.boolean :completed

      t.timestamps
    end
  end
end
