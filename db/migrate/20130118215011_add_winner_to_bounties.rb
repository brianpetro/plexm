class AddWinnerToBounties < ActiveRecord::Migration
  def change
    add_column :bounties, :winner, :integer
  end
end
