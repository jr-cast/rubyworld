# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create(name:"Pedro", photo:"An url", bio:"A Cat")
user2 = User.create(name:"Mata", photo:"An url", bio:"Another Cat")

posts = Post.create([
    { user:user1, title: "What is a professiona tool anyway?", text: "I was using my Macbook Pro when all of a sudden the screen turned black and it started spewing white smoke like it had just elected the" },
    { user:user2, title: "Development Workflows with Collin Jilbert", text: "I was using my Macbook Pro when all of a sudden the screen turned black and it started spewing white smoke like it had just elected the" },
    { user:user1, title: "How I Use Tachyons for CSS", text: "I was using my Macbook Pro when all of a sudden the screen turned black and it started spewing white smoke like it had just elected the" },
    { user:user2, title: "Whats your opinion about nextjs13", text: "I was using my Macbook Pro when all of a sudden the screen turned black and it started spewing white smoke like it had just elected the" },
    { user:user1, title: "Leaning RoR in 2022", text: "I was using my Macbook Pro when all of a sudden the screen turned black and it started spewing white smoke like it had just elected the" },
])
