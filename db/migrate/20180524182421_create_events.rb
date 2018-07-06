class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.integer :time
      t.integer :maxpeople
      t.integer :peopleperhour
      t.integer :cancelfee


      t.timestamps
    end
  end
end
