class CreateProductUserRatings < ActiveRecord::Migration
  def change
    create_table :product_user_ratings do |t|
    	t.integer :product_id, null: false
    	t.integer :user_id, null: false
    	t.integer :rating, null: false
      t.timestamps null: false
    end
  end
end
