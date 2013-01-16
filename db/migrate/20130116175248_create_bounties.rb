class CreateBounties < ActiveRecord::Migration
  def change
    create_table :bounties do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.integer :bounty

      t.timestamps
    end
  end
end
