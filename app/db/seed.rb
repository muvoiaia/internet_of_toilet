if Room.all.nil?
  room_a = a_room = Room.create(name: "4F")
  b_room = Room.create(name: "12F")
  a = Devise.create(address: "team11", room: b_room)
end
