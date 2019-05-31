# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.destroy_all
Category.destroy_all

Admin.create email: "tran.thanh.tam@sun-asterisk.com", password: "Aa@123456789", password_confirmation: "Aa@123456789"

category = Category.create name: "Page"

15.times.each do |i|
  Post.create(title: "Post #{i}", content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elitLorem ipsum dolor sit amet, consectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elit", publish_status: :publish, category: category)
end
