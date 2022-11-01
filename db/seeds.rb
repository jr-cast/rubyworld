# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
users = User.create([
    { 
      name: "Pedro", 
      photo: "https://marketplace.canva.com/EAFEits4-uw/1/0/1600w/canva-boy-cartoon-gamer-animated-twitch-profile-photo-oEqs2yqaL8s.jpg",
      bio: "A dev who enjoys building web apps with JS, RoR, React & Redux 🐱‍💻⚽"
    },
    { 
      name: "Maya", 
      photo: "https://play-lh.googleusercontent.com/i1qvljmS0nE43vtDhNKeGYtNlujcFxq72WAsyD2htUHOac57Z9Oiew0FrpGKlEehOvo=w240-h480-rw",
      bio: "A front-end developer, writer and content creator🎥"
    },
    { 
      name: "Montiel", 
      photo: "https://www.publicdomainpictures.net/pictures/130000/nahled/chihuahua-dog-profile.jpg",
      bio: "A back-end developer who likes to go to the park at all times🦴🌳"
    },
])

posts = Post.create([
    { user:users[0], title: "What is a professiona tool anyway?", text: "I was using my Macbook Pro when all of a sudden the screen turned black and it started spewing white smoke like it had just elected the" },
    { user:users[1], title: "Development Workflows with Collin Jilbert", text: "I was using my Macbook Pro when all of a sudden the screen turned black and it started spewing white smoke like it had just elected the" },
    { user:users[2], title: "How I Use Tachyons for CSS", text: "I was using my Macbook Pro when all of a sudden the screen turned black and it started spewing white smoke like it had just elected the" },
    { user:users[0], title: "Whats your opinion about nextjs13", text: "I was using my Macbook Pro when all of a sudden the screen turned black and it started spewing white smoke like it had just elected the" },
    { user:users[1], title: "Leaning RoR in 2022", text: "I was using my Macbook Pro when all of a sudden the screen turned black and it started spewing white smoke like it had just elected the" },
    { user:users[0], title: "What is a professiona tool anyway?", text: "I was using my Macbook Pro when all of a sudden the screen turned black and it started spewing white smoke like it had just elected the" },
    { user:users[0], title: "What is a professiona tool anyway?", text: "I was using my Macbook Pro when all of a sudden the screen turned black and it started spewing white smoke like it had just elected the" },
])

comments = Comment.create([
  { user:users[1], post:posts[0], text: "I think any tool that increase productivity" },
  { user:users[0], post:posts[0], text: "Nicely put!" },
])

likes = Like.create([
  { user:users[1], post:posts[0]},
  { user:users[2], post:posts[0]},
])