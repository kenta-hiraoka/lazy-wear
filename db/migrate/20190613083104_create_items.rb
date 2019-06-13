class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string    :name, null: false
      t.text      :text, null: false
      t.integer   :status
      t.timestamps null: false
    end
  end
end
