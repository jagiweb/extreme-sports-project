require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Sport.destroy_all

Sport.create(name: "Paintball",
description:"Paintball is a competitive team shooting sport in which players
 eliminate opponents from play by hitting them with spherical dye-filled 
 gelatin capsules also known as paintballs that break upon impact. Paintballs
  are usually shot using a low-energy air weapon called a paintball marker that
   is powered by compressed air, usually nitrogen or carbon dioxide.",
 price_per_person: 50,
 main_image:"https://img.grouponcdn.com/deal/e1QBBsh86zyC29PvVbLm/2n-1500x900/v1/sc600x600.jpg")

 Sport.create(name: "Parkour",
 description:"Parkour is a training discipline using movement that developed from 
 military obstacle course training. Practitioners, called tracers or traceurs, aim 
 to get from one point to another in a complex environment, without assistive equipment 
 and in the fastest and most efficient way possible. Parkour includes running, climbing, 
 swinging, vaulting, jumping, plyometrics, rolling, quadrupedal movement and other movements 
 as deemed most suitable for the situation. Parkour's development from military training gives 
 it some aspects of a non-combative martial art.",
 price_per_person: 35,
 main_image: "https://images.unsplash.com/photo-1554889914-a5c84570ea3e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2158&q=80")

 Sport.create(name: "Drifting",
description: "Burnt rubber, dense smoke and pulsing adrenaline are the essential ingredients 
of a proper drifting race. Extremely close calls with an overwhelming pace trigger the enthusiasm 
worldwide amongst drivers and fans. Drifting truly is as extreme as it gets!",
 price_per_person: 200,
 main_image:
  "https://s3-eu-west-1.amazonaws.com/hac-assets/blog/driftblog/drift1.jpg")

  Sport.create(name: "Rock-Climbing",
  description: "Rock climbing is a physically and mentally demanding sport, one that often tests 
  a climber's strength, endurance, agility and balance along with mental control. So rock climbing, 
  as the name implies, is all about conquering the most difficult, steep, spiky and sketchy rock formations. 
  You will need a lot of control over your body and a skilled eye on which hold to grab and which one might 
   be loose. ",
  price_per_person: 30,
  main_image: "https://outdoorgearlab-mvnab3pwrvp3t0.stackpathdns.com/photos/15/81/279616_31645_M2.jpg")

  Sport.create(name: "Sky-Diving",
  description:"Equipped with a parachute, sky divers mostly jump out of helicopters or planes. 
  Usually they go as high as they can in order to make the sky diver spend as much time in the 
  free fall as possible. Stepping over the edge is the most challenging moment but the free fall 
  after makes you forget about any fear that might have straightened your back hair before. Once 
  your chute opened,  you may glide over some astonishingly beautiful landscapes that are truly 
  breath taking.",
  price_per_person: 300,
  main_image:"https://img.buzzfeed.com/buzzfeed-static/static/2014-04/enhanced/webdr03/11/12/enhanced-buzz-wide-16957-1397232214-14.jpg?downsize=700%3A%2A&output-quality=auto&output-format=auto&output-quality=auto&output-format=auto&downsize=360:*")

  Sport.create(name: "Jet-Skiing",
  description:"Riding an engine powered Jet Ski is the ultimate adrenaline rush. 
  With an incredible average top speed of 75 miles per hour, these beasts are nothing 
  to joke with. Reckless races or even freestyle competitions make the riders face each 
  other in impressive contests. But watch out, the faster you ride it, the further you fly.",
  price_per_person: 350,
  main_image:"https://s3-eu-west-1.amazonaws.com/rb-cms/rbv5/production/uploads/cover_images/e66860fa624f1e4127a9fdb5d9121373edad/i1080x475.jpg")

  Sport.create(name: "Motocross",
  description:"Roaring motors, muddy bikes and raw territory. Motocross doesn’t care about obstacles, 
  makes no halt at big air time and definitely is as blunt as it gets. Jumping over huge ramps and mastering 
  difficult race courses, it's replacing any sign of fear with a big adrenaline rush.",
  price_per_person: 180,
  main_image: "https://i.pinimg.com/originals/a7/e9/34/a7e9343f9f0a34b1da90313936f4a137.jpg")


