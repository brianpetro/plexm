class AddClosedToBounties < ActiveRecord::Migration
  def change
    add_column :bounties, :closed, :boolean
  end
end
