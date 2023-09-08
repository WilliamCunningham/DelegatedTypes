class Activity < ApplicationRecord
  belongs_to :user
  has_many :entries
  enum :status, {active: 'active', inactive: 'inactive'}, validate: true
  ACTION_TYPES = %w[BooleanEntry DatumEntry].freeze
  validates :name, :action_type, presence: true
  validates :action_type, inclusion: { in: ACTION_TYPES }
end