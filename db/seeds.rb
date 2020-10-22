require 'faker'

# 20.times do
#     fake = City.create!(
#         name: Faker::Address.city
#     )
# end

# 20.times do
#     fake = Doctor.create!(
#         first_name: Faker::Name.first_name, 
#         last_name: Faker::Name.last_name,
    
#         zip_code: Faker::Address.zip_code,
#         city_id: City.all.sample
#         )
#     end 

# 20.times do
#      fake = Patient.create!(
#         first_name: Faker::Name.first_name, 
#         last_name: Faker::Name.last_name,
#         city_id: City.all.sample
#         )
# end 

30.times do
    doc = Doctor.all.sample
    appointment = Appointment.create!(doctor:doc, patient:Patient.all.sample, city_id:doc.city_id)
  end

