class DatumEntry < ApplicationRecord
  include Entryable

  before_update :completed_status

  private

  def completed_status
    completed: true unless :datum.nil?
  end
end
