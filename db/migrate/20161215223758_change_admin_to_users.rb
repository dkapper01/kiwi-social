class ChangeAdminToUsers < ActiveRecord::Migration[5.0]
  def change
  	change_column :users, :admin, :boolean, default: true
  end
end
