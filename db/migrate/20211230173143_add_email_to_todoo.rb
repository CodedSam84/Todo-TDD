class AddEmailToTodoo < ActiveRecord::Migration[6.1]
  def change
    add_column :todoos, :email, :string
  end
end
