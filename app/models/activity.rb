class Activity < ApplicationRecord
  belongs_to :user
  enum :status, %w[active inactive], validate: true
  ACTION_TYPES = %w[boolean, datum]
  validates :name, :data_name, :action_type
  validates :action_type, inclusion: { in: ACTION_TYPES }
end