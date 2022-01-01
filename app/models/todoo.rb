class Todoo < ApplicationRecord
  def completed?
    completed_at?
  end
end
