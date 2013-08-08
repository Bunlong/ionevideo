class CreateSingers < ActiveRecord::Migration
  def change
    create_table :singers do |t|
      t.string :name, :null => false
      t.string :gender, :limit => 7, :null => false

      t.timestamps
    end
  end
end
