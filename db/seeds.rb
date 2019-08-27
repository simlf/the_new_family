# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

p 'Starting seed...'

Family.destroy_all
User.destroy_all
Task.destroy_all


p 'Creating families...'

family_1 = Family.create!(
  name: "Shelby Family" )

family_2 = Family.create!(
  name: "Lee Family" )


p 'Creating users...'

user_1 = User.create!(
  family: family_1,
  name: "Maman",
  email: "maman@mail.com",
  password: 'secret'
  )

user_2 = User.create!(
  family: family_1,
  name: "Papa",
  email: "papa@mail.com",
  password: 'secret'
  )

user_3 = User.create!(
  family: family_1,
  name: "Kévin",
  email: "kevin@mail.com",
  password: 'secret'
  )

user_4 = User.create!(
  family: family_2,
  name: "Maman",
  email: "maman2@mail.com",
  password: 'secret'
  )

user_5 = User.create!(
  family: family_2,
  name: "Papa",
  email: "papa2@mail.com",
  password: 'secret'
  )

user_6 = User.create!(
  family: family_2,
  name: "Samantha",
  email: "samantha@mail.com",
  password: 'secret'
  )

p 'Creating tasks...'

task_1 = Task.create!(
  user: user_3,
  name: 'Vacuum the living room'
  )

task_2 = Task.create!(
  user: user_1,
  name: 'Wash the clothes'
  )

task_3 = Task.create!(
  user: user_2,
  name: 'Wash the dishes'
  )

p 'Finished.'



