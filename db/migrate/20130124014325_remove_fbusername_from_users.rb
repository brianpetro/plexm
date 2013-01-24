class RemoveFbusernameFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :fbusername
  end

  def down
    add_column :users, :fbusername, :string
  end
end
