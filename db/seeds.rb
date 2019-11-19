dates = ['today', 'tomorrow', 'next week']
10.times do
  doctor = Doctor.create(
    name: Faker::Name.first_name
  )
 
  10.times do 
    user = User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name
    )

    Appointment.create(
      date: dates.sample,
      doctor_id: doctor.id,
      user_id: user.id
    )
  end
end

puts "Data Seeded."