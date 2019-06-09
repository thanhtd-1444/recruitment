# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.destroy_all
Post.destroy_all
Category.destroy_all
Job.destroy_all

category = Category.create name: "Post"

Admin.create email: "tran.thanh.tam@sun-asterisk.com", password: "Aa@123456789", password_confirmation: "Aa@123456789"
15.times.each do |i|
  Post.create title: "Post #{i}", content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elitLorem ipsum dolor sit amet, consectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elitconsectetuer adipiscing elit",
    publish_status: :publish, category: category
  Job.create title: "Job infor #{i}", content: "content test", quantity: "20 employees (10 males, 10 female)",
    place: "Tokyo, Japan", salary: "1.000.000 Yen/Month", start_date: 1.month.ago.beginning_of_month, end_date: 5.month.from_now.end_of_month
end

puts "Fake data success"
