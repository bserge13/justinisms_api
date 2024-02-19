# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
saying_1 = Justinism.create!(saying: 'Browns to the Super Bowl')
saying_2 = Justinism.create!(saying: "I smell what you're stepping in")
saying_3 = Justinism.create!(saying: 'Gotta go restock the koi pond')
saying_4 = Justinism.create!(saying: 'Cooking with gasoline')
saying_5 = Justinism.create!(saying: '(works for 18 hours straight)')
saying_6 = Justinism.create!(saying: "I'll sleep when I'm dead")
saying_7 = Justinism.create!(saying: "What's up, Big Hoss!")
saying_8 = Justinism.create!(saying: "Jack shit!")
saying_9 = Justinism.create!(saying: "What up, Snickers")
saying_10 = Justinism.create!(saying: "CAS, STOP!")