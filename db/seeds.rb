5.times do
  User.create(username: Faker::Name.name, password: 'password')
end

3.times do
  Survey.create(user_id: rand(1..5), survey_name: Faker::Lorem.word)
end

4.times do
  Question.create(survey_id: rand(1..3), question_name: Faker::Lorem.sentence)
end

4.times do
  Choice.create(question_id: rand(1..4), choice_name: Faker::Lorem.word)
end


10.times do
  Surveyship.create(author_id: User.all.sample(1)[0].id, taker_id: User.all.sample(1)[0].id)
end
