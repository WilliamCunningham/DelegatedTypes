class Entry < ApplicationRecord
  enum :status, %w[pending finished skipped], validate: true
  belongs_to :activity
  has_rich_text :content
  delegated_type :entryable, types: %w[BooleanEntry DatumEntry]
  accepts_nested_attributes_for :entryable

  delegate :name, to: :activity
  delegate :data_name, to: :activity
  delegate :includes_content, to: :activity 
  delegate :includes_duration, to: :activity
  
  validates :performed_at, presence: true
end