User.create!(
  email: 'test@example.com',
  password: 'bhVo4srWrAcK6HzcTuWV6gE',
  password_confirmation: 'bhVo4srWrAcK6HzcTuWV6gE',
  name: 'テストユーザー'
)

family_names = %w{
  佐藤:sato
  鈴木:suzuki
  高橋:takahashi
  田中:tanaka
}

given_names = %w{
  次郎:jiro
  サブロウ:saburo
  マツコ:matsuko
  竹子:takeko
  梅子:umeko
}

20.times do |n|
  fn = family_names[n % 4].split(':')
  gn = given_names[n % 5].split(':')

  User.create!(
    email: "#{fn[1]}_#{gn[1]}@example.com",
    password: 'gFtrFeBo9cxFh4Q8FrrCfps',
    password_confirmation: 'gFtrFeBo9cxFh4Q8FrrCfps',
    name: "#{fn[0]} #{gn[0]}"
  )
end