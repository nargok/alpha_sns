user1 = User.find(10)
user2 = User.find(11)

Comment.create!(
   status_id: 5,
   user_id: user1.id,
   body: 'いいね(・∀・)b'
)

Comment.create!(
   status_id: 5,
   user_id: user2.id,
   body: 'わたしも書きます！'
)

Comment.create!(
   status_id: 4,
   user_id: user1.id,
   body: '完成を楽しみにしてます'
)
