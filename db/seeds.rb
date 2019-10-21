require_relative '../config/environment.rb'

User.create(username: Faker::NatoPhoneticAlphabet.code_word, password: Faker::Team.creature, logged_in: Faker::Boolean.boolean(true_ratio: 0.5))
User.create(username: Faker::NatoPhoneticAlphabet.code_word, password: Faker::Team.creature, logged_in: Faker::Boolean.boolean(true_ratio: 0.5))
User.create(username: Faker::NatoPhoneticAlphabet.code_word, password: Faker::Team.creature, logged_in: Faker::Boolean.boolean(true_ratio: 0.5))
User.create(username: Faker::NatoPhoneticAlphabet.code_word, password: Faker::Team.creature, logged_in: Faker::Boolean.boolean(true_ratio: 0.5))
User.create(username: Faker::NatoPhoneticAlphabet.code_word, password: Faker::Team.creature, logged_in: Faker::Boolean.boolean(true_ratio: 0.5))
User.create(username: Faker::NatoPhoneticAlphabet.code_word, password: Faker::Team.creature, logged_in: Faker::Boolean.boolean(true_ratio: 0.5))
User.create(username: Faker::NatoPhoneticAlphabet.code_word, password: Faker::Team.creature, logged_in: Faker::Boolean.boolean(true_ratio: 0.5))
User.create(username: Faker::NatoPhoneticAlphabet.code_word, password: Faker::Team.creature, logged_in: Faker::Boolean.boolean(true_ratio: 0.5))
User.create(username: Faker::NatoPhoneticAlphabet.code_word, password: Faker::Team.creature, logged_in: Faker::Boolean.boolean(true_ratio: 0.5))

schools = ["Flatiron","Makers","General"]
School.create(name: schools[0])
School.create(name: schools[1])
School.create(name: schools[2])

courses =["Software Engineering","Data Science", "Cybersecurity", "User Experience Design"]
Course.create(topic: courses[0], is_online: Faker::Boolean.boolean(true_ratio: 0.5), is_in_person: Faker::Boolean.boolean(true_ratio: 0.5))
Course.create(topic: courses[1], is_online: Faker::Boolean.boolean(true_ratio: 0.5), is_in_person: Faker::Boolean.boolean(true_ratio: 0.5))
Course.create(topic: courses[2], is_online: Faker::Boolean.boolean(true_ratio: 0.5), is_in_person: Faker::Boolean.boolean(true_ratio: 0.5))
Course.create(topic: courses[3], is_online: Faker::Boolean.boolean(true_ratio: 0.5), is_in_person: Faker::Boolean.boolean(true_ratio: 0.5))

Review.create(school_id: School.all.sample.id, course_id: Course.all.sample.id, user_id: User.all.sample.id, rating: rand(1..5), content: Faker::Hacker.say_something_smart)
Review.create(school_id: School.all.sample.id, course_id: Course.all.sample.id, user_id: User.all.sample.id, rating: rand(1..5), content: Faker::Hacker.say_something_smart)
Review.create(school_id: School.all.sample.id, course_id: Course.all.sample.id, user_id: User.all.sample.id, rating: rand(1..5), content: Faker::Hacker.say_something_smart)
Review.create(school_id: School.all.sample.id, course_id: Course.all.sample.id, user_id: User.all.sample.id, rating: rand(1..5), content: Faker::Hacker.say_something_smart)
Review.create(school_id: School.all.sample.id, course_id: Course.all.sample.id, user_id: User.all.sample.id, rating: rand(1..5), content: Faker::Hacker.say_something_smart)
Review.create(school_id: School.all.sample.id, course_id: Course.all.sample.id, user_id: User.all.sample.id, rating: rand(1..5), content: Faker::Hacker.say_something_smart)
Review.create(school_id: School.all.sample.id, course_id: Course.all.sample.id, user_id: User.all.sample.id, rating: rand(1..5), content: Faker::Hacker.say_something_smart)
Review.create(school_id: School.all.sample.id, course_id: Course.all.sample.id, user_id: User.all.sample.id, rating: rand(1..5), content: Faker::Hacker.say_something_smart)
Review.create(school_id: School.all.sample.id, course_id: Course.all.sample.id, user_id: User.all.sample.id, rating: rand(1..5), content: Faker::Hacker.say_something_smart)
Review.create(school_id: School.all.sample.id, course_id: Course.all.sample.id, user_id: User.all.sample.id, rating: rand(1..5), content: Faker::Hacker.say_something_smart)

