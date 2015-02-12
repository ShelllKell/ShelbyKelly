class UpdateValentinesTable < ActiveRecord::Migration
  def change
    remove_column :valentines, :message, :string
    add_column :valentines, :message, :text
  end
end
