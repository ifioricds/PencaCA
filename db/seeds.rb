# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Country.create(name: 'Brasil')
Country.create(name: 'Bolivia')
Country.create(name: 'Venezuela')
Country.create(name: 'Peru')
Country.create(name: 'Argentina')
Country.create(name: 'Colombia')
Country.create(name: 'Paraguay')
Country.create(name: 'Catar')
Country.create(name: 'Uruguay')
Country.create(name: 'Chile')
Country.create(name: 'Ecuador')
Country.create(name: 'Japon')

Match.create(date: '2019-06-14 21:30:00', country_1_id: '1', country_2_id: '2', phase: 'grupos', group: 'A')
Match.create(date: '2019-06-15 16:00:00', country_1_id: '3', country_2_id: '4', phase: 'grupos', group: 'A')
Match.create(date: '2019-06-18 18:30:00', country_1_id: '2', country_2_id: '4', phase: 'grupos', group: 'A')
Match.create(date: '2019-06-18 21:30:00', country_1_id: '1', country_2_id: '3', phase: 'grupos', group: 'A')
Match.create(date: '2019-06-22 16:00:00', country_1_id: '2', country_2_id: '3', phase: 'grupos', group: 'A')
Match.create(date: '2019-06-22 16:00:00', country_1_id: '4', country_2_id: '1', phase: 'grupos', group: 'A')

Match.create(date: '2019-06-15 19:00:00', country_1_id: '5', country_2_id: '6', phase: 'grupos', group: 'B')
Match.create(date: '2019-06-16 16:00:00', country_1_id: '7', country_2_id: '8', phase: 'grupos', group: 'B')
Match.create(date: '2019-06-19 18:30:00', country_1_id: '6', country_2_id: '8', phase: 'grupos', group: 'B')
Match.create(date: '2019-06-19 21:30:00', country_1_id: '5', country_2_id: '7', phase: 'grupos', group: 'B')
Match.create(date: '2019-06-23 16:00:00', country_1_id: '8', country_2_id: '5', phase: 'grupos', group: 'B')
Match.create(date: '2019-06-23 16:00:00', country_1_id: '6', country_2_id: '7', phase: 'grupos', group: 'B')

Match.create(date: '2019-06-16 19:00:00', country_1_id: '9', country_2_id: '11', phase: 'grupos', group: 'C')
Match.create(date: '2019-06-17 20:00:00', country_1_id: '12', country_2_id: '10', phase: 'grupos', group: 'C')
Match.create(date: '2019-06-20 20:00:00', country_1_id: '9', country_2_id: '12', phase: 'grupos', group: 'C')
Match.create(date: '2019-06-21 20:00:00', country_1_id: '11', country_2_id: '10', phase: 'grupos', group: 'C')
Match.create(date: '2019-06-24 20:00:00', country_1_id: '10', country_2_id: '9', phase: 'grupos', group: 'C')
Match.create(date: '2019-06-24 20:00:00', country_1_id: '11', country_2_id: '12', phase: 'grupos', group: 'C')

