class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.text :message
      t.timestamps null: false
    end
  end
end
