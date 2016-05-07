# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
  # Mayor.create(name: 'Emanuel', city: cities.first)


  User.create({ email:"aha@lol.com", password:"abcd1234"})
  User.create({ email:"frank@lol.com", password:"abcd1234"})
  User.create({ email:"boblol.com", password:"abcd1234"})
  User.create({ email:"steven@lol.com", password:"abcd1234"})
  User.create({ email:"guile@lol.com", password:"abcd1234"})
  User.create({ email:"marklol.com", password:"abcd1234"})

  Post.create({ content: "react on rails gem rocks", user_id:1})
  Post.create({ content: "Javascript for the win", user_id:1})
  Post.create({ content: "Good old fashioned C", user_id:2})
  Post.create({ content: "Ruby language is for sissies", user_id:3})

  Skill.create({ name: "C#"})
  Skill.create({ name: "C"})
  Skill.create({ name: "Javascript"})
  Skill.create({ name: "Ruby"})
  Skill.create({ name: "Ruby on rails"})
  Skill.create({ name: "Microsoft MVC"})

  Comment.create({ text:"I agree", post_id:1, user_id:1})
  Comment.create({ text:"totally wrong", post_id:1, user_id:2})
  Comment.create({ text:"nope", post_id:2, user_id:3})
  Comment.create({ text:"thats just cruel...", post_id:4, user_id:4})
