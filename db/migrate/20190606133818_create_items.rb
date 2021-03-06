class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :owner_id
      t.integer :borrower_id, default: nil 
      t.string :brand
      t.string :color
      t.integer :size
      t.string :description
      t.string :category
      t.string :img_url
      t.string :status, default: "Not Borrowed"
      t.timestamps
    end
  end
end
