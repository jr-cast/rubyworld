# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
users = User.create([
    { 
      name: "Pedro", 
      photo: "https://marketplace.canva.com/EAFEits4-uw/1/0/1600w/canva-boy-cartoon-gamer-animated-twitch-profile-photo-oEqs2yqaL8s.jpg",
      bio: "A dev who enjoys building web apps with JS, RoR, React & Redux 🐱‍💻⚽",
      email: "josercastanos@gmail.com",
      password: "asdasd",
      password_confirmation: "asdasd"
    },
    { 
      name: "Maya", 
      photo: "https://image.shutterstock.com/image-illustration/casual-young-black-girl-purple-260nw-1806646354.jpg",
      bio: "A front-end developer, writer and content creator🎥",
      email: "maya@gmail.com",
      password: "asdasd",
      password_confirmation: "asdasd"
    },
    { 
      name: "Montiel", 
      photo: "https://www.publicdomainpictures.net/pictures/130000/nahled/chihuahua-dog-profile.jpg",
      bio: "A back-end developer who likes to go to the park at all times🦴🌳",
      email: "monty@gmail.com",
      password: "asdasd",
      password_confirmation: "asdasd"
    },
    { 
      name: "Fer", 
      photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI8-M5qhYrh-TpusBS4QB0EL0lO6_2TmSA2A&usqp=CAU",
      bio: "A back-end developer who likes to go to the park at all times🦴🌳",
      email: "fer@gmail.com",
      password: "asdasd",
      password_confirmation: "asdasd"
    },
    { 
      name: "Ramon", 
      photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5jazwN6mEQZ0tuVNeWLC21f3m9G_N9Lxbiw&usqp=CAU",
      bio: "A back-end developer who likes to go to the park at all times🦴🌳",
      email: "ramon@gmail.com",
      password: "asdasd",
      password_confirmation: "asdasd"
    },
])

# posts = Post.create([
#     { user:users[0], title: "What is a professiona tool anyway?", text: "I was using my Macbook Pro when all of a sudden the screen turned black and it started spewing white smoke like it had just elected the" },
#     { user:users[1], title: "Development Workflows with Collin Jilbert", text: "I was using my Macbook Pro when all of a sudden the screen turned black and it started spewing white smoke like it had just elected the" },
#     { user:users[2], title: "How I Use Tachyons for CSS", text: "I was using my Macbook Pro when all of a sudden the screen turned black and it started spewing white smoke like it had just elected the" },
#     { user:users[0], title: "Whats your opinion about nextjs13", text: "I was using my Macbook Pro when all of a sudden the screen turned black and it started spewing white smoke like it had just elected the" },
#     { user:users[1], title: "Leaning RoR in 2022", text: "I was using my Macbook Pro when all of a sudden the screen turned black and it started spewing white smoke like it had just elected the" },
#     { user:users[0], title: "What is a professiona tool anyway?", text: "I was using my Macbook Pro when all of a sudden the screen turned black and it started spewing white smoke like it had just elected the" },
#     { user:users[0], title: "What is a professiona tool anyway?", text: "I was using my Macbook Pro when all of a sudden the screen turned black and it started spewing white smoke like it had just elected the" },
# ])

# comments = Comment.create([
#   { user:users[1], post:posts[0], text: "I think any tool that increase productivity" },
#   { user:users[0], post:posts[0], text: "Nicely put!" },
#   { user:users[1], post:posts[0], text: "I think any tool that increase productivity" },
#   { user:users[0], post:posts[0], text: "Nicely put!" },
#   { user:users[1], post:posts[0], text: "I think any tool that increase productivity" },
#   { user:users[0], post:posts[0], text: "Nicely put!" },
#   { user:users[1], post:posts[0], text: "I think any tool that increase productivity" },
#   { user:users[0], post:posts[0], text: "Nicely put!" },
#   { user:users[1], post:posts[0], text: "I think any tool that increase productivity" },
#   { user:users[0], post:posts[0], text: "Nicely put!" },
# ])

# likes = Like.create([
#   { user:users[1], post:posts[0]},
#   { user:users[2], post:posts[0]},
# ])