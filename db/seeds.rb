# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |index|
  Event.create(event_name: "柏の葉公園ランニング", event_date: "３月２１日", place: "柏の葉公園", description: "３人くらい一緒にいきましょう")
  FashionsComment.create(user_id: User.first.id, text: "いいですね.いいですね.いいですね.いいですね.")
end
