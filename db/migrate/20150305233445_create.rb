class Create < ActiveRecord::Migration
  def change
    create_table :clovers do |t|
      t.string :from
      t.text :message

      t.timestamps
    end
  end
end
