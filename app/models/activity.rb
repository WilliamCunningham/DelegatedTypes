class Activity < ApplicationRecord
  belongs_to :user
  enum :status, {active: 'active', inactive: 'inactive'}, validate: true
  ACTION_TYPES = %w[BooleanEntry, DatumEntry]
  validates :name, :data_name, :action_type, presence: true
  validates :action_type, inclusion: { in: ACTION_TYPES }
end