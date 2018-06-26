# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.find_or_initialize_by(email: 'pablocangas@gmail.com')
user1.update!(name: "Pablo Cangas", email: 'pablocangas@gmail.com', phone: '23432432', password: 'passpass', password_confirmation: 'passpass') if user1.new_record?

# FactoryGirl.create_list(:project, 15)
