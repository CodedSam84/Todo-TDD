class AddCompletedAtToTodoos < ActiveRecord::Migration[6.1]
  def change
    add_column :todoos, :completed_at, :timestamp
  end
end
