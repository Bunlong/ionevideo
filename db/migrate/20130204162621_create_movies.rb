class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title, :null => false
      t.string :url, :null => false
      t.references :type, :null => false

      t.timestamps
    end
  end
end
