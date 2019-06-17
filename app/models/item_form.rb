class ItemForm < ApplicationRecord


  attr_accessor       :name,
                      :text,
                      :category_id,
                      :feeling,
                      :images,
                      :id

  def save
    return false if invalid?
    item = Item.new(name: name, text: text, category_id: category_id, feeling: feeling)
    images.each do |i|
      item.images.new(image: i)
      item.save
    end
  end
end
