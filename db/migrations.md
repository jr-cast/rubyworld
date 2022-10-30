### create users table

rails g migration CreateUsers name:string photo:string bio:string posts_counter:integer

### create posts table with reference to user

rails g migration CreatePosts title:string text:text comments_counter:integer likes_counter:integer user:references

### create comments table with reference to user and post

rails g migration CreateComments text:text user:references post:references

## create likes table with references to usr and post 

rails g migration CreateLikes user:references post:references