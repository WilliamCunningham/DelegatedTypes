module Actionable
  extend ActiveSupport::Concern

  included do
    has_one :activity, as: :Actionable, touch: true
  end
end