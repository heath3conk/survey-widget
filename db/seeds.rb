User.create!(first_name: "Heather", last_name: "Conklin", email: "heath@heath.com", password: "password", role: "Course Author")
User.create!(first_name: "Betsy", last_name: "Quick", email: "bquick@ths.com", password: "password", role: "Course Author")
User.create!(first_name: "Will", last_name: "Hunting", email: "southie@mit.edu", password: "password", role: "Student")

3.times do 
  Survey.create!(
    creator_id: 1,
    title: "Survey about #{Faker::Hacker.ingverb}"
    )
end

3.times do 
  Survey.create!(
    creator_id: 2,
    title: "Survey about #{Faker::Hacker.noun}"
    )
end

survey_counter = 1
6.times do
  4.times do
    Question.create!(
      survey_id: survey_counter,
      question_text: Faker::Lorem.paragraph(2),
      choice_one: Faker::Lorem.sentence,
      choice_two: Faker::Lorem.sentence,
      choice_three: Faker::Lorem.sentence,
      choice_four: Faker::Lorem.sentence,
      )
  end
  survey_counter += 1
end