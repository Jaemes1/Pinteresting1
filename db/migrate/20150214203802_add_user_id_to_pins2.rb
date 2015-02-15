class AddUserIdToPins2 < ActiveRecord::Migration
  def change
    add_column :pins2s, :user_id, :integer
    add_index :pins2s, :user_id
  end
end
