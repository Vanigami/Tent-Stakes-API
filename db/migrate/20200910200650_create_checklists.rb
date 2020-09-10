class CreateChecklists < ActiveRecord::Migration[6.0]
  def change
    create_table :checklists do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :item_name
      t.string :item_category

      t.timestamps
    end
  end
end
