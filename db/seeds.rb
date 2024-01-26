Assignment.destroy_all
Room.destroy_all
Department.destroy_all
User.destroy_all

2.times do
  department = Department.new(name: Faker::Lorem.word)
  puts "Department #{department.name} created!" if department.save!
end

Department.all.each do |department|
  4.times do
    room = Room.new(department: department, name: Faker::Space.planet)
    puts "Room #{room.name} created!" if room.save!
  end
end

Room.all.each do |room|
  2.times do
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    user = User.new(
      first_name: first_name,
      last_name: last_name,
      email: Faker::Internet.email(name: "#{first_name}#{rand(1980..2005)}"),
      password: "password"
    )
    puts "User #{user.first_name} created!" if user.save!
  end
end

User.all.each do |user|
  room = Room.all.sample
  (Date.new(2023, 01, 01)..(Date.today + 300.days)).each do |date|
    assignment = Assignment.new(user: user, time_at: date.to_datetime, room: room)
    puts "Assignment #{assignment.id} created!" if assignment.save!
  end
end