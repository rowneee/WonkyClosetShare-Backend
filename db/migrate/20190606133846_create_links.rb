class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.integer :owner_id
      t.integer :borrower_id
      t.timestamps
    end
  end
end
