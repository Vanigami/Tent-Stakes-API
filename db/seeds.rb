# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Checklist Data 

# checklist1 = Checklist.create([{name: 'Blue Diamond'}])

# checklist1.items.create([
#     {item_name: "bubblegum", item_category: "Snack", item_weight: 0.3}, {item_name: "3 Musketeers", item_category: "Snacks", item_weight: 0.5}
# ])
User.destroy_all
Checklist.destroy_all
Item.destroy_all

user1 = User.create({username: 'Wasabi', password_digest: "fumanchu"})

checklist1 = Checklist.create({name: "Blue Diamond", user_id: 1})

item1 = Item.create({item_name: "Tent", item_category: "Campsite", item_weight: 2.5, checklist_id: 1})
item2 = Item.create({item_name: "Sleeping bag", item_category: "Campsite", item_weight: 1, checklist_id: 1})
item3 = Item.create({item_name: "Pillow", item_category: "Campsite", item_weight: 0.5, checklist_id: 1})
item4 = Item.create({item_name: "Headlamp", item_category: "Campsite", item_weight: 0.25, checklist_id: 1})
item5 = Item.create({item_name: "Flashlight", item_category: "Campsite", item_weight: 0.25, checklist_id: 1})
item6 = Item.create({item_name: "Batteries", item_category: "Campsite", item_weight: 0.01, checklist_id: 1})
item7 = Item.create({item_name: "Camp Chair", item_category: "Campsite", item_weight: 1.5, checklist_id: 1})
item8 = Item.create({item_name: "Camp Table", item_category: "Campsite", item_weight: 2, checklist_id: 1})



