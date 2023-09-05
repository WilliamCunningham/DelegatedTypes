class Activity < ApplicationRecord
  belongs_to :user
  delegated_type :actionable, types: %w[BooleanEntry]
end
