# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
CoursePage.create!(:name => "Data Science certification course", :slug => "data-science", :backend_key => "data-analytics")
CoursePage.create!(:name => "Big data course", :slug => "big-data", :backend_key => "big-data")