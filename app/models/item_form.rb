class ItemForm < ApplicationRecord
  include ActiveModel::Model
  validates :images,presence: {message: "画像がありません"}
  validates :name, presence: {message:"40字以内で入力してください"},length: { maximum: 40 ,message: "40字以内で入力してください"}
  validates :category_id, presence: {message:"入力してください"}
  validates :middle_category_id, presence: {message:"入力してください"}
  validates :feeling, presence: {message:"入力してください"}


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
