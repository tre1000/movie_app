class DropActors < ActiveRecord::Migration[6.1]
  def change
    drop_table :actors
  end
end
