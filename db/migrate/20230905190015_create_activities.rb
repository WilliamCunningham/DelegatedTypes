class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :action_type
      t.string :status
      t.boolean :includes_duration
      t.boolean :includes_content

      t.timestamps
    end
  end
end
