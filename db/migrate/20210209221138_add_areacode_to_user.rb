class AddAreacodeToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :area_code, :string
  end
end
