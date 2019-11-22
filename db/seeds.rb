# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
School.destroy_all
puts "Destroying schools"

flatiron = School.create!(name: "Flatiron School", address:"11 Broadway")
nyu = School.create!(name: "NYU", address:"New York, NY 10003")
jj = School.create!(name: "John Jay", address:"524 W 59th St, New York, NY 10019")
cc = School.create!(name: "City College", address:"160 Convent Ave, New York, NY 10031")
cu = School.create!(name: "Columbia University", address:"116th St & Broadway, New York, NY 10027")
puts "adding schools"

Student.destroy_all


Student.create(name: "Triona Moynihan", age: 17, school_id: flatiron.id)
Student.create(name: "Trewain Copplestizone", age: 32, school_id: flatiron.id)
Student.create(name: "Barak Saidoff", age: 67, school_id: nyu.id)
Student.create(name: "Timmy Tom", age: 100, school_id: cc.id)
Student.create(name: "Billy Bob", age: 8, school_id: cu.id)
Student.create(name: "Gabe G", age: 4, school_id: flatiron.id)
Student.create(name: "Carlos E", age: 45, school_id: flatiron.id)