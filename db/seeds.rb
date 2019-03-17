# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

names = %w(レコーダー イヤホン マイク Webカメラ 洗濯機 冷蔵庫 エアコン ノートPC 40型TV デジタルカメラ)

names.each do |name|
    random = [*1..10].sample  # 1から10のランダム値を取得
    Product.create! name: name, price: random * 1000, released_on: random.day.ago
  end