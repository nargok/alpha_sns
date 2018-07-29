user = User.find(3)

Like.create!(
  status_id: 5,
  user_id: user.id
)