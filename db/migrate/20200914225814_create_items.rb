class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :item_category
      t.integer :item_weight
      t.integer :checklist_id
      t.timestamps
    end
  end
end
