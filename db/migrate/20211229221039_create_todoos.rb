class CreateTodoos < ActiveRecord::Migration[6.1]
  def change
    create_table :todoos do |t|
      t.string :title

      t.timestamps
    end
  end
end
