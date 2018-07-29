user1 = User.find(2)
user2 = User.find(3)
user3 = User.find(4)
user4 = User.find(5)
user5 = User.find(6)
user6 = User.find(7)

Status.create!(
  user_id: user1.id,
  body: 'カフェで休憩中です'
)

Status.create!(
  user_id: user2.id,
  body: '図書館で勉強中です'
)

Status.create!(
  user_id: user3.id,
  body: '漫画を読んでます'
)

Status.create!(
  user_id: user4.id,
  body: '本を書いてます'
)

Status.create!(
  user_id: user5.id,
  body: 'ブログを書いてます'
)

Status.create!(
  user_id: user6.id,
  body: 'これから帰るところです'
)
