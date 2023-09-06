class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :data_name
      t.string :action_type, default: 'BooleanEntry'
      t.string :status, default: 'active'
      t.boolean :includes_duration, default: false
      t.boolean :includes_content, default: false

      t.timestamps
    end
  end
end
