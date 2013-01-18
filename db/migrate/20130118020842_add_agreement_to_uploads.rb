class AddAgreementToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :agreement, :boolean
  end
end
