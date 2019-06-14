# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.create!([
  { id: 1, name:'トップス' },
  { id: 2, name: 'ボトムス' },
  { id: 3, name: 'シューズ' },
  { id: 4, name: 'アクセサリー' },
 ])

 MiddleCategory.create!([

  { id: 1, name: 'ジャケット(春夏)', category_id: 1,},
  { id: 2, name: 'ジャケット(秋冬)', category_id: 1,},
  { id: 3, name: 'カットソー(春夏)', category_id: 1,},
  { id: 4, name: 'カットソー(秋冬)', category_id: 1,},
  { id: 5, name: 'ニット', category_id: 1,},
  { id: 6, name: 'シャツ(春夏)', category_id: 1,},
  { id: 7, name: 'シャツ(秋冬)', category_id: 1,},
  { id: 8, name: 'ボトムス(春夏)', category_id: 2,},
  { id: 9, name: 'ボトムス(秋冬)', category_id: 2,},
  { id: 10, name: 'スニーカー', category_id: 3,},
  { id: 11, name: '革靴',category_id: 3,},
  { id: 12, name: '時計', category_id: 4,},
  { id: 13, name: 'ブレスレット', category_id: 4,},])