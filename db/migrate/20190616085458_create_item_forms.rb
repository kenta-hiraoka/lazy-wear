class CreateItemForms < ActiveRecord::Migration[5.2]
  def change
    create_table :item_forms do |t|

      t.timestamps
    end
  end
end
