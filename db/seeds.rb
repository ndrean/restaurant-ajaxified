puts "Cleaning database ..."

Restaurant.destroy_all

puts "Creating restaurants ..."

Restaurant.create!(
  name: "Le Bistro Quai",
  address: "25 Boulevard de Stalingrad, Nantes"
)
Restaurant.create!(
  name: "Le Bureau",
  address: "Ile de Nantes"
)

puts "Done!"
