class Entry < ApplicationRecord
  belongs_to :activity_id
  has_rich_text :content
  delegated_type :entryable, types: %w[BooleanEntry DatumEntry]

  accepts_nested_attributes_for :boolean_entries, :datum_entries

  delegate :name, to: :activity
  delegate :includes_content, to: :activity 
  delegate :includes_duration, to: :activity
  
  validates :performed_at, presence: true, if: :recorded
end