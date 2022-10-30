# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create(name:"Pedro", photo:"An url", bio:"A Cat")
post = Post.create(user:user, title:"Hello miau", text:"im fat cat")
comments = Comment.create([
    { user:user, post:post, text:"one" },
    { user:user, post:post, text:"two" },
    { user:user, post:post, text:"three" },
    { user:user, post:post, text:"four" },
    { user:user, post:post, text:"five" },
    { user:user, post:post, text:"six" }])