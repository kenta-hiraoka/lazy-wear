class ItemForm < ApplicationRecord
  include ActiveModel::Model
  validates :images,presence: {message: "画像がありません"}
  validates :name, presence: {message:"40字以内で入力してください"},length: { maximum: 40 ,message: "40字以内で入力してください"}
  validates :category_id, presence: {message:"入力してください"}
  validates :middle_category_id, presence: {message:"入力してください"}
  validates :feeling, presence: {message:"入力してください"}

<<<<<<< Updated upstream

  attr_accessor       :name,
                      :text,
                      :category_id,
                      :feeling,
                      :images,
=======
  attr_accessor       :name,
                      :text,
                      :category_id,
                      :middle_category_id,
                      :feeling,
                      :images,
                      :user_id,
>>>>>>> Stashed changes
                      :id

  def save
    return false if invalid?
<<<<<<< Updated upstream
    item = Item.new(name: name, text: text, category_id: category_id, feeling: feeling)
=======
    item = Item.new(name: name,text: text,category_id: category_id, middle_category_id: middle_category_id, feeling: feeling, user_id: user_id)
>>>>>>> Stashed changes
    images.each do |i|
      item.images.new(image: i)
      item.save
    end
  end
end
