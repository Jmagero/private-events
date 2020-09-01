# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
  Event.create(name: "Event #{i}", date:"2020-10-1", description: "Event #{i}", creator_id: i)
end

5.times do |i|
  User.create(username: "User #{i}", email: "#{i}@gmail.com")
end

5.times do |i|
  EventManager.create(attendee_id: 1 , attended_event_id: i)
end


5.times do |i|
  EventManager.create(attendee_id: 2 , attended_event_id: i)
end


5.times do |i|
  EventManager.create(attendee_id: 3 , attended_event_id: i)
end


5.times do |i|
  EventManager.create(attendee_id: 4 , attended_event_id: i)
end






