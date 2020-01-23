require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Event.delete_all
# EventAttendee.delete_all
# Location.delete_all
# Sport.destroy_all
# User.delete_all
DayType.delete_all
User.delete_all
Sport.destroy_all
Location.delete_all
EventAttendee.delete_all
Event.delete_all

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

  # Sport.create(name: "Jet-Skiing",
  # description:"Riding an engine powered Jet Ski is the ultimate adrenaline rush. 
  # With an incredible average top speed of 75 miles per hour, these beasts are nothing 
  # to joke with. Reckless races or even freestyle competitions make the riders face each 
  # other in impressive contests. But watch out, the faster you ride it, the further you fly.",
  # price_per_person: 350,
  # main_image:"https://s3-eu-west-1.amazonaws.com/rb-cms/rbv5/production/uploads/cover_images/e66860fa624f1e4127a9fdb5d9121373edad/i1080x475.jpg")

  Sport.create(name: "Motocross",
  description:"Roaring motors, muddy bikes and raw territory. Motocross doesn’t care about obstacles, 
  makes no halt at big air time and definitely is as blunt as it gets. Jumping over huge ramps and mastering 
  difficult race courses, it's replacing any sign of fear with a big adrenaline rush.",
  price_per_person: 180,
  main_image: "https://i.pinimg.com/originals/a7/e9/34/a7e9343f9f0a34b1da90313936f4a137.jpg")

  
  DayType.create(name:"experience day")
  DayType.create(name:"practice")
  DayType.create(name:"tournament")


  Location.create(
    sport_id: 1,
    address: "1 Aveley Rd, Upminster RM14 2TN",
    map_location: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d253971.7455897902!2d0.042789003871203865!3d51.46770916661247!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xef9095bc2c0e45b9!2sDelta%20Force%20Paintball%20East%20London!5e0!3m2!1sen!2suk!4v1579706006170!5m2!1sen!2suk" 
  )

  Location.create(
    sport_id: 1,
    address: "1 Paintball Woods, Salmons Ln, Whyteleafe CR3 0HB",
    map_location: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d317963.585381553!2d0.009195783201078717!3d51.49320651805005!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x97835d6bf09830c2!2sGO%20Paintball%20London!5e0!3m2!1sen!2suk!4v1579707110263!5m2!1sen!2suk" 
  )

  Location.create(
    sport_id: 1,
    address: "11 Forest Dr, Theydon Bois, Epping CM16 7EX",
    map_location: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d317963.585381553!2d0.009195783201078717!3d51.49320651805005!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf7ab58a1e6487d8b!2sMayhem%20Paintball%20Games%20Essex!5e0!3m2!1sen!2suk!4v1579707208063!5m2!1sen!2suk" 
  )

  Location.create(
    sport_id: 2,
    address: "West London Free school, Cambridge Grove, Hammersmith, London W6 0LB",
    map_location: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d317962.2770027456!2d0.00919453658503765!3d51.493394099147594!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf5f1a5ddfb040ee9!2sFoucan%20Freerunning%20Academy!5e0!3m2!1sen!2suk!4v1579707485690!5m2!1sen!2suk" 
  )

  Location.create(
    sport_id: 2,
    address: "Chainstore Gym & Parkour Academy, 64 Orchard Place Trinity Buoy Wharf, London E14 0JY",
    map_location: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d317962.2770027456!2d0.00919453658503765!3d51.493394099147594!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc7d3d39800a63f4!2sParkour%20Generations%20London!5e0!3m2!1sen!2suk!4v1579707552125!5m2!1sen!2suk" 
  )

  Location.create(
    sport_id: 2,
    address: "Planet Organic, 52 Garratt Ln, Wandsworth, London SW18 4FT",
    map_location: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d154689.96613276843!2d-0.30498216278434265!3d51.42407305601848!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x42b7d0a07a315c72!2sLocal%20Motion!5e0!3m2!1sen!2suk!4v1579707674467!5m2!1sen!2suk" 
  )

  Location.create(
    sport_id: 3,
    address: "Bovingdon Airfield, Upper Bourne End Ln, Hemel Hempstead HP1 2RR",
    map_location: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d158147.94465960393!2d-0.6768316835937904!3d51.731908000000004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48764305196a3fcf%3A0x83488b18e76ce15f!2sDrift%20Limits!5e0!3m2!1sen!2suk!4v1579707751304!5m2!1sen!2suk" 
  )

  Location.create(
    sport_id: 3,
    address: "52 Furzen Cres, Hatfield AL10 9QJ",
    map_location: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d423244.85819704266!2d-0.544537581328625!3d51.5679600261912!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2560113f140398e4!2sDrift%20School!5e0!3m2!1sen!2suk!4v1579707796318!5m2!1sen!2suk" 
  )

  Location.create(
    sport_id: 3,
    address: "Station Ln, Bedford MK45 2JQ",
    map_location: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2454.267583077103!2d-0.5284166842597097!3d52.03843927955728!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb95c61ef87667e3f!2sCAT%20Driver%20Training%20Ltd!5e0!3m2!1sen!2suk!4v1579707889842!5m2!1sen!2suk" 
  )

  Location.create(
    sport_id: 4,
    address: "Neptune Trading Centre, Unit 2a & 3a, Neptune Rd, Harrow HA1 4HX",
    map_location: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d630904.912577109!2d-0.9926454489669628!3d51.852332199727805!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x766e45cd2417984a!2sHarroWall%20Climbing%20Centre!5e0!3m2!1sen!2suk!4v1579707958339!5m2!1sen!2suk" 
  )

  Location.create(
    sport_id: 4,
    address: "Unit 6, Mellish Industrial Estate, Harrington Way, Greenwich Peninsula, London SE18 5NR",
    map_location: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d630904.912577109!2d-0.9926454489669628!3d51.852332199727805!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfd3a09f47e1fc344!2sThe%20Reach%20Climbing%20Wall!5e0!3m2!1sen!2suk!4v1579708052952!5m2!1sen!2suk" 
  )

  Location.create(
    sport_id: 4,
    address: "1 Crowthorne Rd, London W10 6RP",
    map_location: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d630904.912577109!2d-0.9926454489669628!3d51.852332199727805!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x24c2e14249fac261!2sWestway%20Climbing!5e0!3m2!1sen!2suk!4v1579708112822!5m2!1sen!2suk" 
  )

  Location.create(
    sport_id: 5,
    address: "Chiltern Park Aerodrome, Icknield Rd, Wallingford OX10 6AS",
    map_location:"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d552312.6053611627!2d-0.4609982717841905!3d51.28312429367418!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x350dd87e48824bca!2sSkydiving%20London%20Londons%20Parachute%20School!5e0!3m2!1sen!2suk!4v1579708259141!5m2!1sen!2suk" 
  )

  Location.create(
    sport_id: 5,
    address: "Basingstoke Leisure Park, Euskirchen Way, Basingstoke RG22 6PG",
    map_location: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d552777.0229899582!2d-1.0783740349091349!3d51.24449290364888!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe4551cba97d29eb2!2siFLY%20Indoor%20Skydiving%20Basingstoke!5e0!3m2!1sen!2suk!4v1579708307295!5m2!1sen!2suk" 
  )

  Location.create(
    sport_id: 5,
    address: "Oak House, Horton cum studley OX33 1BU",
    map_location: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d550063.955607345!2d-0.7673116311807976!3d51.469878241479805!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf8793a96c29ed02!2sInfinite%20Skydiving%20Solutions!5e0!3m2!1sen!2suk!4v1579708359677!5m2!1sen!2suk" 
  )

  # Location.create(
  #   sport_id: 6,
  #   address: "Long Beach, Harbour, Whitstable CT5 1AB",
  #   map_location: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d848022.3587785815!2d-0.5382060189025814!3d51.48559794560908!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xee46129e14ce365a!2sOyster%20Coast%20Watersports!5e0!3m2!1sen!2suk!4v1579708737811!5m2!1sen!2suk" 
  # )

  # Location.create(
  #   sport_id: 6,
  #   address: "Action Watersports, Lake 1 Dengemarsh Road, Romney Marsh TN29 9JH",
  #   map_location: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d848022.3587785815!2d-0.5382060189025814!3d51.48559794560908!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x604fd6ed1d98046c!2sAction%20Watersports!5e0!3m2!1sen!2suk!4v1579708799006!5m2!1sen!2suk" 
  # )

  # Location.create(
  #   sport_id: 6,
  #   address: "Unit 2-3, Apex Centre, Speedfields Park, Fareham PO14 1TP",
  #   map_location: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d848022.3587785815!2d-0.5382060189025814!3d51.48559794560908!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xbe3d138ba956a2e6!2sWatercraft%20World!5e0!3m2!1sen!2suk!4v1579708851905!5m2!1sen!2suk" 
  # )

  Location.create(
    sport_id: 7,
    address: "1a, 21 Central Ave, Molesey, West Molesey KT8 2QH",
    map_location: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d753718.6373348862!2d-0.36587278050592476!3d51.488008762303885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7a8ecc22c404687a!2sPure%20Dirt%20Motocross!5e0!3m2!1sen!2suk!4v1579708906747!5m2!1sen!2suk" 
  )

  Location.create(
    sport_id: 7,
    address: "High Wycombe HP10 9QH",
    map_location: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d753718.6373348862!2d-0.36587278050592476!3d51.488008762303885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x8c013489d25d662d!2sFlackwell%20Heath%20Moto%20Park!5e0!3m2!1sen!2suk!4v1579708942297!5m2!1sen!2suk" 
  )

  Location.create(
    sport_id: 7,
    address: "Billington Rd, Stanbridge, Leighton Buzzard LU7 9JH",
    map_location: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d753718.6373348862!2d-0.36587278050592476!3d51.488008762303885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xee1a6a8d71866beb!2s210mx%20Moto%20Park!5e0!3m2!1sen!2suk!4v1579708985389!5m2!1sen!2suk" 
  )



  
  2.times do User.create(
    name: Faker::Internet.unique.username,
    age: Faker::Number.within(range:16..100),
    email: Faker::Internet.unique.email,
    password_digest: Faker::Internet.password(max_length:10)
  ) end

  10.times do User.create(
    name: Faker::Internet.unique.username,
    age: Faker::Number.within(range:16..100),
    email: Faker::Internet.unique.email,
    password_digest: Faker::Internet.password(max_length:10),
    admin: true
  ) end

  

  105.times do Event.create(
    date: Faker::Date.forward(days: 182),
    sport_id: Faker::Number.within(range:1..7),
    location_id: Faker::Number.within(range:1..21),
    day_type_id: Faker::Number.within(range:1..3)
  ) end



  525.times do EventAttendee.create(
    user_id: Faker::Number.within(range:1..110),
    event_id: Faker::Number.within(range:1..75)
  ) end
