# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "Thinh", email:"lethinhcdt@gmail.com", password: "123456")
p user1

user2 = User.create({name: "Thinh Le", email:"tibi01993@gmail.com", password: "654321"})
p user2

Message.create!(sender_id: user1.id, receiver_id: user2.id, read_at: nil, title:"unread message", body:"Text message from user1 to user2")
Message.create!(sender_id: user1.id, receiver_id: user2.id, read_at: Time.now, title:"read message", body:"Text message from user1 to user2")
Message.create!(sender_id: user2.id, receiver_id: user1.id, read_at: nil, title:"unread message", body:"Text message from user2 to user1")
Message.create!(sender_id: user2.id, receiver_id: user1.id, read_at: Time.now, title:"read message", body:"Text message from user2 to user1")
