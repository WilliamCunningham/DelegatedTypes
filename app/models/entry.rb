class Entry < ApplicationRecord
  belongs_to :activity_id
  has_rich_text :content
end
