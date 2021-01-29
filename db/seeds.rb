#user seeds
User.create(name: "Xemariah")
User.create(name: "Freyja")
User.create(name: "Ariadne")
User.create(name: "Vothrani")
User.create(name: "Talan")
User.create(name: "Okim")

#item seeds
Item.create(name: "The Idiot's Handbook", itype: "Book", rarity: 1, value: 1)
Item.create(name: "Needle", itype: "Weapon", rarity: 3, value: 10)
Item.create(name: "Mana Potion", itype: "Consumable", rarity: 2, value: 10)
Item.create(name: "Helmet", itype: "Equipment", rarity: 1, value: 3)
Item.create(name: "UltraSuperRad Thingamadoo", itype: "Trinket", rarity: 5, value: 15)
Item.create(name: "That one thing", itype: "Trinket", rarity: 4, value: 13)

#inventory seeds
Inventory.create(user_id: 1, item_id: 1)
Inventory.create(user_id: 2, item_id: 1)
Inventory.create(user_id: 3, item_id: 1)
Inventory.create(user_id: 4, item_id: 1)
Inventory.create(user_id: 5, item_id: 1)
Inventory.create(user_id: 6, item_id: 1)

