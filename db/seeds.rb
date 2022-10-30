# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create(name:"Pedro", photo:"An url", bio:"A Cat")
post = Post.create(user:user, title:"Hello miau", text:"im fat cat")
comment = Comment.create(user:user, post:post, text:"LMAO")
