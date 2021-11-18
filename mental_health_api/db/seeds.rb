# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Medication.destroy_all
Behavior.destroy_all
Insurance.destroy_all
Provider.destroy_all
Condition.destroy_all


User.create([
    {
    name: "Harry Potter",
    email: "hp@gmail.com",
    password: "lighteningbolt"
},
{
    name: "Hermione Granger",
    email: "books@gmail.com",
    password: "ronweasley101"
}
])

Medication.create([
    {
        name: "ampheta/dextro combo",
        dose: "35",
        first_dose: Date.new(2021,5,2),
        notes: "ADHD, working well",
        user_id: 1
    },
    {
        name: "lexapro",
        dose: "35",
        first_dose: Date.new(2021,5,6),
        notes: "depression, not working",
        user_id: 1
    }
])

Behavior.create([
    {
        name: "anxious",
        details: "feeling worried for long periods of time",
        user_id: 1
    },
    {
        name: "depressed",
        details: "feeling sad for long periods of time",
        user_id: 2
    }
])

Insurance.create([
    {
        name: "bcbs",
        address: "2800 rock creek pkwy",
        phone: "123-4567-8910",
        notes: "primary insurance",
        user_id: 1
    },
    {
        name: "ministry of magic insurance",
        address: "a phone booth in london",
        phone: "777-777-7777",
        notes: "professional insurance",
        user_id: 2
    }
])

Provider.create([
    {
        name: "Healer 1",
        address: "st. mungo's hospital for injuries and magical maladies",
        phone: "111-111-1111",
        first_visit: Date.new(2021,7,9),
        notes: "very good healer",
        insurance_id: 1
    },
    {
        name: "Healer 2",
        address: "st. mungo's hospital for injuries and magical maladies",
        phone: "222-222-2222",
        first_visit: Date.new(2021,7,11),
        notes: "nice lady",
        insurance_id: 2
    }
])

Condition.create([
    {
        name: "anxiety",
        description: "feeling scared, worried, and overthinking for long periods of time",
        behavior_id: 1
    },
    {
        name: "depression",
        description: "feeling down, lost, sad, or hopeless for long periods of time",
        behavior_id: 2
    }
])