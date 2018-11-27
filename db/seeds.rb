1.times do
  u = User.create(
  email: 'admin@admin.com',
  password: 'password',
  nickname: 'coolguy'
  )
  10.times do
    l = u.lists.create(
    name: Faker::Hipster.word,
    description: Faker::Hipster.sentence(4),
    location: Faker::Address.street_address,
    priority: Faker::Number.between(1,10),
    active: Faker::Boolean.boolean(0.7)
    )
    10.times do
      l.items.create(
        name: Faker::Commerce.product_name,
        description: Faker::Hipster.sentence(2),
        priority: Faker::Number.between(1,100),
        active: Faker::Boolean.boolean(0.4),
        comment: Faker::Hipster.sentence(1),
        list_id: l.id
      )
    end
  end
end

puts "seeded"