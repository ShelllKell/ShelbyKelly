class CreateValentinesTable < ActiveRecord::Migration
  def change
    create_table :valentines do |t|
      t.string :from
      t.string :message

      t.timestamps
    end
  end
end
