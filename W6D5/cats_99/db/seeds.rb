# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Cat.destroy_all
cat1 = Cat.create(birth_date: "2012/01/10", color: "brown", name: "Tom", sex: "M", description: "Lazy")
cat2 = Cat.create(birth_date: "2017/10/15", color: "red", name: "Charlie", sex: "F", description: "Smart")