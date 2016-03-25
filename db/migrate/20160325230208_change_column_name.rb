class ChangeColumnName < ActiveRecord::Migration
  def change
  		rename_column :registered_applications, :URL, :url
  end
end
