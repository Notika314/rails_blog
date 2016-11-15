class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.references :post, null: false
      t.integer :user_id, null: false
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
