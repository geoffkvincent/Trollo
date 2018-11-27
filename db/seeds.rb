1.times do
  u = User.create(
  email: 'admin@admin.com',
  password: 'password',
  )
  5.times do
    b = u.boards.create(
    name: Faker::Hipster.word,
    )
    5.times do
      l = b.lists.create(
        name: Faker::Commerce.product_name,
      )
      10.times do
        l.tasks.create(
          name: Faker::Lebowski.character,
          body: Faker::Hipster.sentence(2),
        )
      end
    end
  end
end

puts "seeded"