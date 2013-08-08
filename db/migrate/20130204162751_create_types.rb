class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :v_type, :null => false

      t.timestamps
    end
  end
end