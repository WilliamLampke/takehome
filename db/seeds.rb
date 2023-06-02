# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
customer1 = Customer.create!(first_name: "William", last_name: "L", email: "william@email", address: "address")

tea1 = Tea.create!("title": "Green Tea", description: "green in color", temperature: "100 degrees", brew_time: "20 minutes")
tea2 = Tea.create!("title": "Blue Tea", description: "blue in color", temperature: "200 degrees", brew_time: "30 minutes")

subscription1 = Subscription.create!(title: tea1.title, price: 7, status: 0, frequency: "once a month", customer_id: customer1.id)
subscription2 = Subscription.create!(title: tea2.title, price: 10, status: 0, frequency: "once a month", customer_id: customer1.id)

tea3 = Tea.create!("title": "Red Tea", description: "red in color", temperature: "200 degrees", brew_time: "30 minutes")
