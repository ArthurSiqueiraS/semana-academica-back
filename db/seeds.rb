Faker::Config.locale = 'pt-BR'

times = [[9, 0], [10, 30], [13, 30], [15,0], [16, 30]]

if User.empty?
  User.create(email: 'teste@sam.com', password: 'sam2020')
  User.create(email: 'admin@sam.com', password: 'sam2020', admin: true)
end

[27, 28, 29, 30, 31].each do |day|
  Array(0..4).each do |i|
    Lecture.create({
      title: Faker::Book.title,
      speaker: Faker::Book.author,
      description: Faker::Lorem.paragraph,
      schedule_time: Time.new(2020, 07, day, times[i][0], times[i][1]),
      link: Faker::Internet.url,
      thumbnail: '/lectures/300x250.jpg'
    })
  end
end

Array(1..100).each do
  Publication.create({
    title: Faker::Cannabis.terpene,
    author: Faker::Science.scientist,
    thumbnail: 'https://cdn.vuetifyjs.com/images/cards/sunshine.jpg'
  })
end