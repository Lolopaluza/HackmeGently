User.delete_all

  User.create({ email:"billgates@microsoft.com", password:"abcd1234"})
  User.create({ email:"tesla@genius.com", password:"abcd1234"})
  User.create({ email:"zedshawk@python.com", password:"abcd1234"})
  User.create({ email:"teamawesome@hackmegently.com", password:"abcd1234"})
  User.create({ email:"stevejobs@swift.com", password:"abcd1234"})
  User.create({ email:"CSSfan@styling.com", password:"abcd1234"})
  User.create({ email:"newbyHTMLfan@idontknowwhatimdoing.com", password:"abcd1234"})
  User.create({ email:"Javafan@moneyyy.com", password:"abcd1234"})
  User.create({ email:"alanturing@turingcomps.com", password:"abcd1234"})
  User.create({ email:"zuckerburg@fb.com", password:"abcd1234"})


Post.delete_all
  Post.create({ content: "Hey jobs, what are your thoughts on this blue box?", user_id:1})
  Post.create({ content: "Anyone here know about a devise to make my shit work?", user_id:2})
  Post.create({ content: "In need of faster cpu, the germans are coming :(", user_id:9})
  Post.create({ content: "Ruby is dead", user_id:3})
  Post.create({ content: "The react guide for noobs", user_id:4})
  Post.create({ content: "Your all wrong..", user_id:5})
  Post.create({ content: "Style Style Style, the generic website guide", user_id:6})
  Post.create({ content: "How do i make websites shiny", user_id:7})
  Post.create({ content: "I'm a genius, let me tell you about it", user_id:10})


Skill.delete_all
  Skill.create({ name: "C#"})
  Skill.create({ name: "C"})
  Skill.create({ name: "Javascript"})
  Skill.create({ name: "Ruby"})
  Skill.create({ name: "Python"})
  Skill.create({ name: "React"})
  Skill.create({ name: "Fortran"})
  Skill.create({ name: "SQL"})
  Skill.create({ name: "Java"})
  Skill.create({ name: "CSS"})
  Skill.create({ name: "HTML"})

Comment.delete_all

  Comment.create({ text:"Hahahaha *flip table* and ruuuunnnn", post_id:1, user_id:5, commentable_id: 1})
  Comment.create({ text:"I'm working on it, in the meantime, you want somebody to work you? ;)", post_id:2, user_id:9, commentable_id: 2})
  Comment.create({ text:"Check out my latest model it's the bomb", post_id:3, user_id:1, commentable_id: 3})
  Comment.create({ text:"In the sence that it will blow up in your face, yes indeed", post_id:3, user_id:5, commentable_id: 3})
  Comment.create({ text:"Stfu", post_id:4, user_id:4, commentable_id: 4})
  Comment.create({ text:"You dont know what your talking about", post_id:5, user_id:10, commentable_id: 5})
  Comment.create({ text:"Well screw you too.", post_id:5, user_id:4, commentable_id: 6})
  Comment.create({ text:"If i had one ball i would still be more capable than you", post_id:6, user_id:3, commentable_id: 7})
  Comment.create({ text:"You need to use google", post_id:7, user_id:4, commentable_id: 8})
  Comment.create({ text:"Dont make a website, check out mine and be social instead!", post_id:8, user_id:10, commentable_id: 9})
  Comment.create({ text:"I'm a genius, dont see you winning any wars", post_id:9, user_id:3, commentable_id: 10})
