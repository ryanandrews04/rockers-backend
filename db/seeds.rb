User.destroy_all
Post.destroy_all
Comment.destroy_all

puts "Data destroyed"

User.reset_pk_sequence
Post.reset_pk_sequence
Comment.reset_pk_sequence

User.create(username: "Ryan", password: "yeah", bio: "A beginner but knows some acoustic", image: "https://images.unsplash.com/photo-1510915361894-db8b60106cb1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z3VpdGFyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80")

User.create(username: "Tom", password: "yeah", bio: "Miss being in Blink-182", image: "https://ca-times.brightspotcdn.com/dims4/default/07a1b9f/2147483647/strip/true/crop/2048x1365+0+0/resize/1486x990!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F25%2F78%2F50ae1e0dc9b48425848dcf193be4%2Fsdut-tom-delonge-of-the-bands-blink-20160824-002")

Post.create(user_id: 1, text: "Testing out the new site, looks cool", title: "new here", image: nil)

Post.create(user_id: 2, text: "I just really really miss my old band", title: "Take me back Blink", image: "https://www.rollingstone.com/wp-content/uploads/2018/06/rs-9557-blink-182-624x420-1360782526.jpg?resize=1800,1200&w=1800")

Comment.create(user_id: 2, post_id: 1, text: "Welcome, you should learn some blink", image: nil)

Comment.create(user_id: 1, post_id: 2, text: "Angels & Airwaves is cool too man", image: "https://ca-times.brightspotcdn.com/dims4/default/44ddb30/2147483647/strip/true/crop/2000x1334+0+0/resize/1486x991!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2Fe1%2F7c%2F38905d874646bb94eedf0b38b024%2Fava.jpg")

puts "Finished seeding"

