# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Trainer.create!([
  {first_name: "Alex", last_name: "Higgens", username: "AHiggens", email: "alex@gmail.com", password_digest: "$2a$10$N1xH2zDYMYNj4hoshZpXKuVGwtWcYSaSQDbddoX1QLvqOVJfPqVlO", birthdate: nil, gender: nil, avatar: "trainer_profile4", bio: " Dui sapien eget mi proin sed libero. Elementum nisi quis eleifend quam adipiscing vitae. Maecenas pharetra convallis posuere morbi. Nisl nisi scelerisque eu ultrices vitae auctor.", location: "Durham, NC", video: "https://www.youtube.com/embed/WdlbdIrvhvc", rating: 4},
  {first_name: "Luke", last_name: "Cage", username: "CageAgainstTheMachine", email: "luke@gmail.com", password_digest: "$2a$10$VTqmNbWi52CBXn4OmdSKNORPfG6arahvjKd0MNsw82WTUMSSracuu", birthdate: nil, gender: nil, avatar: nil, bio: "A pellentesque sit amet porttitor eget dolor morbi non arcu. Tristique nulla aliquet enim tortor at auctor urna nunc. Pharetra convallis posuere morbi leo urna molestie at elementum eu. Tristique senectus et netus et malesuada fames ac turpis.", location: "Hell's Kitchen, NY", video: nil, rating: 3},
  {first_name: "Madison", last_name: "Quirk", username: "captainquirk", email: "madison@gmail.com", password_digest: "$2a$10$EaauE3spUor5c8b/jOxtjOqOhDX0QZoRRWdRUqOwBzBqx16SYmrtC", birthdate: "1993-01-01", gender: "female", avatar: "trainer_profile1", bio: " Bibendum at varius vel pharetra vel turpis. Faucibus in ornare quam viverra orci sagittis eu. Viverra ipsum nunc aliquet bibendum enim facilisis gravida. In massa tempor nec feugiat nisl pretium fusce. Elementum pulvinar etiam non quam lacus. Senectus et netus et malesuada fames ac.", location: "Chapel Hill, NC", video: "https://www.youtube.com/watch?v=6giek-w57Yw", rating: 5},
  {first_name: "Carol", last_name: "Danvers", username: "MrsMarvel", email: "carol@gmail.com", password_digest: "$2a$10$N1xH2zDYMYNj4hoshZpXKuVGwtWcYSaSQDbddoX1QLvqOVJfPqVlO", birthdate: nil, gender: nil, avatar: nil, bio: "A pellentesque sit amet porttitor eget dolor morbi non arcu. Tristique nulla aliquet enim tortor at auctor urna nunc. Pharetra convallis posuere morbi leo urna molestie at elementum eu. Tristique senectus et netus et malesuada fames ac turpis.", location: "Boston, MA", video: nil, rating: 5},
  {first_name: "Nnanna", last_name: "Egbujiobi", username: "Nnanna", email: "nnanna@gmail.com", password_digest: "$2a$10$4dt22AwxXEayWLg1dkmhkO3B79FrxgG/6v41cKDDUPGbk2XwbFg7G", birthdate: nil, gender: nil, avatar: nil, bio: "Do stuff. ", location: "Madison, WI", video: nil, rating: 4},
  {first_name: "Wanda", last_name: "Maximoff", username: "ScarlettWitch", email: "wanda@gmail.com", password_digest: "$2a$10$EaauE3spUor5c8b/jOxtjOqOhDX0QZoRRWdRUqOwBzBqx16SYmrtC", birthdate: nil, gender: nil, avatar: nil, bio: "Amet consectetur adipiscing elit duis tristique sollicitudin nibh. Urna id volutpat lacus laoreet non curabitur. Enim diam vulputate ut pharetra sit. Turpis tincidunt id aliquet risus feugiat in ante.", location: "Manhatten, NY", video: nil, rating: nil},
  {first_name: "David", last_name: "Owens", username: "davidowens", email: "davidowens@gmail.com", password_digest: "$2a$10$N1xH2zDYMYNj4hoshZpXKuVGwtWcYSaSQDbddoX1QLvqOVJfPqVlO", birthdate: "1992-01-01", gender: "male", avatar: "trainer_profile2", bio: "Amet consectetur adipiscing elit duis tristique sollicitudin nibh. Urna id volutpat lacus laoreet non curabitur. Enim diam vulputate ut pharetra sit. Turpis tincidunt id aliquet risus feugiat in ante.", location: "Fuquay Varina, NC", video: "https://www.youtube.com/embed/hFpiaWb6qvY", rating: 4},
  {first_name: "Jessica", last_name: "Jones", username: "null", email: "jessica@gmail.com", password_digest: "$2a$10$bk0LuHOWj7mndsSOu0zxoeuDacxviLvgIWhxx6JwIoKY.8vXnKOdK", birthdate: nil, gender: nil, avatar: "trainer_profile3", bio: "A pellentesque sit amet porttitor eget dolor morbi non arcu. Tristique nulla aliquet enim tortor at auctor urna nunc. Pharetra convallis posuere morbi leo urna molestie at elementum eu. Tristique senectus et netus et malesuada fames ac turpis.", location: "Hell's Kitchen, NY", video: "https://www.youtube.com/embed/3yNegNoOoIE", rating: 3}
])

User.create!([
  {first_name: "Joseph", last_name: "Coyne", username: "jpcoyne", email: "joseph@gmail.com", password_digest: "$2a$10$EaauE3spUor5c8b/jOxtjOqOhDX0QZoRRWdRUqOwBzBqx16SYmrtC", birthdate: "1991-03-19", gender: "male", weight: 195, height: 69, avatar: "#<ActionDispatch::Http::UploadedFile:0x00007fb17d888d68>"},
  {first_name: "Mike", last_name: "Henze", username: "xXxMikeHenze420xXx", email: "mike@gmail.com", password_digest: "$2a$10$EaauE3spUor5c8b/jOxtjOqOhDX0QZoRRWdRUqOwBzBqx16SYmrtC", birthdate: "1989-04-19", gender: "male", weight: 190, height: 70, avatar: "/picture", level: "beginner"},

  {first_name: "Nnanna", last_name: "Egbujiobi", username: "OhNnannaWhatsMyName", email: "nnanna@gmail.com", password_digest: "$2a$10$EaauE3spUor5c8b/jOxtjOqOhDX0QZoRRWdRUqOwBzBqx16SYmrtC", birthdate: "1989-04-19", gender: "male", weight: 190, height: 70, avatar: "/picture", level: "beginner"},

  {first_name: "Tayt", last_name: "Bicknell", username: "TayterTot", email: "tayt@gmail.com", password_digest: "$2a$10$EaauE3spUor5c8b/jOxtjOqOhDX0QZoRRWdRUqOwBzBqx16SYmrtC", birthdate: "1989-04-19", gender: "male", weight: 190, height: 70, avatar: "/picture", level: "beginner"}
])

Appointment.create!([
  {time: "2018-11-16 15:00:00", trainer_id: 2, user_id: 2, rating: 5, info: nil, focus: "Upperbody"},
  {time: "2018-10-31 12:33:00", trainer_id: 1, user_id: 2, rating: 5, info: nil, focus: "Upperbody"},
  {time: "2018-11-07 01:33:00", trainer_id: 9, user_id: 1, rating: 5, info: nil, focus: "Upperbody"},
  {time: "2018-11-28 23:05:00", trainer_id: 4, user_id: 1, rating: 5, info: nil, focus: "Upperbody"},
  {time: "2018-11-01 05:00:00", trainer_id: 1, user_id: 1, rating: 3, info: "We'll be going hard on your core this time so be sure to eat a light healthy meal. Or don't. Do whatever.", focus: "Upperbody"}
])
Item.create!([
  {name: "apple"},
  {name: "bottom"},
  {name: "jeans"},
  {name: "Waterbottle"},
  {name: "Yoga Mat"},
  {name: "Pokeballs"},
  {name: "Jump Rope"}
])
AppointmentItem.create!([
  {item_id: 19, appointment_id: 27},
  {item_id: 20, appointment_id: 27},
  {item_id: 21, appointment_id: 27},
  {item_id: 22, appointment_id: 27}
])
Tag.create!([
  {name: "Stretching"},
  {name: "Jogging"},
  {name: "Zumba"},
  {name: "Yoga"},
  {name: "Isometrics"},
  {name: "Pole Dancing"},
  {name: "Jumping Rope"},
  {name: "Bicycling"},
  {name: "Sprinting"},
  {name: "Powerlifting"},
  {name: "Boxing"},
  {name: "Wrestling"},
  {name: "Ballet"},
  {name: "Gymnastics"},
  {name: "Pilates"},
  {name: "Walking"},
  {name: "Calisthenics"},
  {name: "Weightlifting"},
  {name: "Crossfit"},
  {name: "Krav Maga"},
  {name: "Tai Chi"},
  {name: "Running"},
  {name: "HIIT Training"},
  {name: "Strength Training"},
  {name: "Bootcamp"},
  {name: "Personal Training"},
  {name: "Core"},
  {name: "Functional Training"},
  {name: "Recovery"},
  {name: "Kickboxing"},
  {name: "Cardio"},
  {name: "Resistance"},
  {name: "Kettlebells"},
  {name: "Bodyweight Movement"},
  {name: "Plyometrics"},
  {name: "Circuit Training"},
  {name: "Anaerobics"},
  {name: "Compound Exercises"},
  {name: "Heart Rate Zones"},
  {name: "RPE"}
])

TrainerTag.create!([
  {tag_id: 6, trainer_id: 1},
  {tag_id: 1, trainer_id: 1},
  {tag_id: 2, trainer_id: 1},
  {tag_id: 5, trainer_id: 1},
  {tag_id: 24, trainer_id: 8},
  {tag_id: 23, trainer_id: 8},
  {tag_id: 31, trainer_id: 8},
  {tag_id: 32, trainer_id: 8},
  {tag_id: 36, trainer_id: 8},
  {tag_id: 9, trainer_id: 9},
  {tag_id: 2, trainer_id: 9},
  {tag_id: 12, trainer_id: 9},
  {tag_id: 3, trainer_id: 4},
  {tag_id: 5, trainer_id: 4},
  {tag_id: 11, trainer_id: 5},
  {tag_id: 14, trainer_id: 5},
  {tag_id: 12, trainer_id: 5},
  {tag_id: 22, trainer_id: 5},
  {tag_id: 9, trainer_id: 6},
  {tag_id: 1, trainer_id: 6},
  {tag_id: 8, trainer_id: 6},
  {tag_id: 4, trainer_id: 6},
  {tag_id: 5, trainer_id: 6},
  {tag_id: 2, trainer_id: 7},
  {tag_id: 4, trainer_id: 7},
  {tag_id: 1, trainer_id: 7},
  {tag_id: 5, trainer_id: 7},
  {tag_id: 6, trainer_id: 7},
  {tag_id: 4, trainer_id: 2},
  {tag_id: 6, trainer_id: 2}
])

Meal.create!([
  {user_id: 1, recipe_instructions: "Grill chuck steak untill tender, cut open and if slightly pink it is cooked", name: "grilled steak", meal_type: "dinner"},
  {user_id: 3, recipe_instructions: "Grill chicken breast on each side for 8 minutes, boil water and add rice allowing it to simmer for 15 minutes. Serve and Enjoy!", name: "Chicken & Rice", meal_type: "dinner"},
  {user_id: 3, recipe_instructions: "Grill steak seasoning on each side and cooking 6 minutes per side, bake potato in the oven for 45 minutes. Serve and Enjoy! ", name: "New York Strip & Baked potato", meal_type: "dinner"},
  {user_id: 3, recipe_instructions: "Season steak on each side then grill for 6 minutes each side, boil water and add rice allowing it to simmer for 15 minutes. Serve and enjoy!", name: "Chuck Steak & rice", meal_type: "dinner"},
  {user_id: 3, recipe_instructions: "Grill chicken breast and season well, bake potato for 45 minutes then serve and enjoy!", name: "Chicken & baked potato", meal_type: "dinner"},
  {user_id: 3, recipe_instructions: "Marinate steak over night, grill on each side for 8 minutes flipping the steak twice. Boil water then add rice and let simmer for 15 minutes. Serve and enjoy!", name: "New York Strip and Rice", meal_type: "dinner"},
  {user_id: 3, recipe_instructions: "Season salmon then bake in the oven until tender and falling apart at the touch, boil water with a teaspoon of salt and add quinoa, let simmer for 15 minutes. Serve and enjoy!", name: "Salmon and Quinoa", meal_type: "dinner"},
  {user_id: 3, recipe_instructions: "grill chicken breast for 5 minutes on each side and boil water then add rice and let simmer for 15 minutes.", name: "Chicken and Rice", meal_type: "dinner"},
  {user_id: 3, recipe_instructions: "grills steak and cook rice", name: "new york strip and rice", meal_type: "dinner"},
  {user_id: 3, recipe_instructions: "grill steak for 7 minutes each side, season potato to desired flavor then bake for 45 minutes. Serve and enjoy!", name: "Chuck steak with baked potato", meal_type: "dinner"},
  {user_id: 3, recipe_instructions: "cook food", name: "Chicken and rice", meal_type: "dinner"},
  {user_id: 3, recipe_instructions: "Cook steak to desired perfection and boil water then add rice and let simmer for 15 minutes. Serve and enjoy!", name: "Steak and Rice", meal_type: "dinner"}
])

Ingredient.create!([
  {name: "chuck steak", protein: 23, carbohydrates: 0, fat: 6, magnesium: 0, iron: 15, zinc: 0, folate: 0, vitamin_d: 0},
  {name: "banana", protein: 1.1, carbohydrates: 23.07, fat: 0.33, magnesium: 27.27, iron: 0.26, zinc: 0.15, folate: 20.2, vitamin_d: 0},
  {name: "chicken breast", protein: 42.54, carbohydrates: 0, fat: 9.6, magnesium: 0, iron: 3.89, zinc: 0, folate: 0, vitamin_d: 0},
  {name: "jasmine rice", protein: 4.25, carbohydrates: 44.51, fat: 0.44, magnesium: 18.96, iron: 10.53, zinc: 0.77, folate: 91.64, vitamin_d: 0},
  {name: "new york strip", protein: 71, carbohydrates: 3, fat: 63, magnesium: 0, iron: 0, zinc: 0, folate: 0, vitamin_d: 0},
  {name: "red potato", protein: 3.17, carbohydrates: 27.03, fat: 0.21, magnesium: 38.64, iron: 5.37, zinc: 0.55, folate: 37.26, vitamin_d: 0},
  {name: "salmon", protein: 50.18, carbohydrates: 0, fat: 28.04, magnesium: nil, iron: 4.3, zinc: 0, folate: 0, vitamin_d: 0},
  {name: "quinoa", protein: 4.07, carbohydrates: 19.7, fat: 1.77, magnesium: 0, iron: 7.66, zinc: 0, folate: 0, vitamin_d: 0}
])

MealIngredient.create!([
  {ingredient_id: 1, meal_id: 1},
  {ingredient_id: 3, meal_id: 2},
  {ingredient_id: 4, meal_id: 2},
  {ingredient_id: 5, meal_id: 3},
  {ingredient_id: 6, meal_id: 3},
  {ingredient_id: 1, meal_id: 4},
  {ingredient_id: 4, meal_id: 4},
  {ingredient_id: 3, meal_id: 5},
  {ingredient_id: 6, meal_id: 5},
  {ingredient_id: 5, meal_id: 8},
  {ingredient_id: 4, meal_id: 8},
  {ingredient_id: 7, meal_id: 9},
  {ingredient_id: 8, meal_id: 9},
  {ingredient_id: 3, meal_id: 10},
  {ingredient_id: 4, meal_id: 10},
  {ingredient_id: 5, meal_id: 11},
  {ingredient_id: 4, meal_id: 11},
  {ingredient_id: 1, meal_id: 12},
  {ingredient_id: 6, meal_id: 12},
  {ingredient_id: 3, meal_id: 13},
  {ingredient_id: 4, meal_id: 13},
  {ingredient_id: 1, meal_id: 14},
  {ingredient_id: 4, meal_id: 14}
])
Workout.create!([
  {name: "Fight ready", time: "20mins", image: "https://i.imgur.com/3I5avia.jpg", description: "", level: "advanced"},
  {name: "Cardio Chair", time: "15mins", image: "https://i.imgur.com/PwWWB68.jpg", description: "Get your cardio in without leaving your desk!", level: "beginner"},
  {name: "Rainmaker", time: "15mins", image: "https://i.imgur.com/6HXskwu.jpg", description: "Bring The Rain!", level: "beginner"},
  {name: "Cardio Party", time: "15mins", image: "https://i.imgur.com/RHJwQtE.jpg", description: "Its a party at the office so sweat it out!", level: "beginner"},
  {name: "Chair Abs", time: "15mins", image: "https://i.imgur.com/uQTox0h.jpg", description: "Crunch those abs while your crunching those numbers!", level: "beginner"},
  {name: "Cardio Check", time: "15mins", image: "https://i.imgur.com/uQTox0h.jpg", description: "Cardio...Check...Check!", level: "beginner"},
  {name: "Cardio Grind", time: "15mins", image: "https://i.imgur.com/FYXXFbH.jpg", description: "Get your grind on with some fun cardio!", level: "beginner"},
  {name: "Power Hold", time: "15mins", image: "https://i.imgur.com/QZ6o8NM.jpg", description: "Start your strength track now with the Power Hold!", level: "beginner"},
  {name: "Seated Boxer", time: "15mins", image: "https://i.imgur.com/u4JMPXw.jpg", description: "Kick some serious butt while gettub ready for that next presentation!", level: "beginner"},
  {name: "Stapler", time: "15mins", image: "https://i.imgur.com/pqncSp0r.jpg", description: "The Stapler enough said!", level: "beginner"},
  {name: "Upperbody Press", time: "15mins", image: "https://i.imgur.com/UlXUwyV.jpg", description: "Upperbody work lets go!", level: "beginner"},
  {name: "ControlAltDelete", time: "20mins", image: "https://i.imgur.com/4EkxUf5.jpg", description: "", level: "advanced"},
  {name: "Docked", time: "20mins", image: "https://i.imgur.com/pXiwgCT.jpg", description: "", level: "advanced"},
  {name: "Full Body Works", time: "20mins", image: "https://i.imgur.com/RNuUgHW.jpg", description: "", level: "advanced"},
  {name: "Fury Master", time: "20mins", image: "https://i.imgur.com/G0W95AE.jpg", description: "", level: "advanced"},
  {name: "Hero Maker", time: "20mins", image: "https://i.imgur.com/GdhBrQS.jpg", description: "", level: "advanced"},
  {name: "PowerTrim", time: "20mins", image: "https://i.imgur.com/O0zlJEZ.jpg", description: "", level: "advanced"},
  {name:"Abs & Core",time:"15mins",image:"https://i.imgur.com/kuOlgbC.jpg",description:"",level:"intermediate"},
	{name:"Arms360",time:"15mins",image:"https://i.imgur.com/6O45Fg7.jpg",description:"",level:"intermediate"},
	{name:"Cardio Prime",time:"15mins",image:"https://i.imgur.com/PiKq0P1.jpg",description:"",level:"intermediate"},
	{name:"Chair Cycle",time:"15mins",image:"https://i.imgur.com/EL837L0.jpg",description:"",level:"intermediate"},
	{name:"Office Boxer",time:"15mins",image:"https://i.imgur.com/dH3YlMb.jpg",description:"",level:"intermediate"},
	{name:"Office Circuit",time:"15mins",image:"https://i.imgur.com/8fRXRJk.jpg",description:"",level:"intermediate"},
	{name:"The Wall",time:"15mins",image:"https://imgur.com/sopjrqv",description:"",level:"intermediate"},
	{name:"Thunderbolt",time:"15mins",image:"https://imgur.com/T2kZeFC",description:"",level:"intermediate"},
	{name:"Yoga Fix",time:"15mins",image:"https://imgur.com/9QaBsDQ",description:"",level:"intermediate"},
	{name:"Cardio Mixer", time:"15mins",image:"https://i.imgur.com/MloUIP3.jpg",description:"",level:"intermediate"}
])

UserWorkout.create!([
  {user_id: 1, workout_id: 2, times_done: 1},
  {user_id: 2, workout_id: 3, times_done: 1},
  {user_id: 3, workout_id: 1, times_done: 1},
  {user_id: 1, workout_id: 2, times_done: 1},
  {user_id: 1, workout_id: 4, times_done: 2}
])
