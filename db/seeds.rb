Faker::Config.locale = 'pt-BR'

times = [[9, 0], [10, 30], [13, 30], [15,0], [16, 30]]

[4, 5, 6, 7, 8].each do |day|
  Array(0..4).each do |i|
    Lecture.create({
      title: Faker::Book.title,
      speaker: Faker::Book.author,
      description: Faker::Lorem.paragraph,
      schedule_time: Time.new(2020, 11, day, times[i][0], times[i][1]),
      link: Faker::Internet.url,
      thumbnail: Faker::Avatar.image
    })
  end
end