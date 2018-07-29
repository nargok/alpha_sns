test_user = User.find_by(email: 'test@example.com')

Friendship.create!(
  user_id: test_user.id,
  friend_id: 4,
  accept: true,
  reject: nil
)

Friendship.create!(
  user_id: test_user.id,
  friend_id: 6,
  accept: nil,
  reject: nil
)


Friendship.create!(
  user_id: test_user.id,
  friend_id: 9,
  accept: nil,
  reject: true
)

Friendship.create!(
  user_id: test_user.id,
  friend_id: 11,
  accept: true,
reject: nil
)

Friendship.create!(
  user_id: test_user.id,
  friend_id: 13,
  accept: true,
  reject: nil
)

Friendship.create!(
  user_id: 2,
  friend_id: test_user.id,
  accept: nil,
  reject: nil
)

Friendship.create!(
  user_id: 3,
  friend_id: test_user.id,
  accept: nil,
  reject: nil
)

