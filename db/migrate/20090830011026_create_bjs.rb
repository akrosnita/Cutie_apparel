class CreateBjs < ActiveRecord::Migration
  def self.up
    create_table :bjs do |t|
      t.string :name
      t.decimal :price
      t.string :color
      t.string :size
      t.text :description
      t.string :img_file

      t.timestamps
    end
  end

  def self.down
    drop_table :bjs
  end
end
