class AddFeelingToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :feeling, :integer,default: 0
  end
end
