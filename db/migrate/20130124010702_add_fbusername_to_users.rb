class AddFbusernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fbusername, :string
  end
end
