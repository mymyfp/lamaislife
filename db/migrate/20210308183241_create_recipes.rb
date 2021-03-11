class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.text :ingredients, default: [], array: true
      t.integer :votes
      t.bigint :user_id, null: false

      t.timestamps
    end
  end
end
