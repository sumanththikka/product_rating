class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :name, :length => 50, null: false, unique: true
      t.timestamps null: false
    end
  end
end
