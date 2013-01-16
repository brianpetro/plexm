class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.integer :upload_id
      t.integer :bounty_id

      t.timestamps
    end
  end
end
