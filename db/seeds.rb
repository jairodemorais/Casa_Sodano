# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{ description: 'Dormitorio'},
                              { description: 'Cocina'},
                              { description: 'Banio'},
                              { description: 'Tecnologia'},
                              { description: 'Living'},
                              { description: 'Jardin'}])

items = Item.create([{ title: 'Televisor 29', description: 'La tele de 29 mejor del mundo', price: 320, image_url: 'tele.jpg', category: categories[3]}, 
                    { title: 'Heladera', description: 'Heladera con frizeer 5 temperaturas', price: 4500, image_url: 'healdera.jpg', category: categories[1]}, 
                    { title: 'Cama', description: 'Cama de dos plazas de resortes 2mts x 1,90mts', price: 1800, image_url: 'cama.jpg', category: categories.first}, 
                    { title: 'Notebook', description: 'intel core 2 duo, 4gb de Ram, 250 disco duro', price: 2500, image_url: 'notebbok.jpg', category: categories[3]}])                    

news = News.create([{ title: 'PROMOCION Heladera $3500', description: 'llevando dos heladeras whirpool la segunda a solo $3500'},
                   { title: 'PROMOCION Television $300', description: 'llevando dos televisiones sony la segunda a solo $300'},
                   { title: 'PROMOCION Cama $1700', description: 'la cama a solo 1700'},
                   { title: 'PROMOCION notebbok $2500', description: 'la mejor del mundo'}])                  
