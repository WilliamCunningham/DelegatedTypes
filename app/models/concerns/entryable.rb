module Entryable
  extend ActiveSupport::Concern

  included do
    has_one :entry, as: :Entryable, touch: true
  end
end