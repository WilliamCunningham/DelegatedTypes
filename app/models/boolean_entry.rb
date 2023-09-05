class BooleanEntry < ApplicationRecord
  include Actionable
  has_rich_text :content
end
