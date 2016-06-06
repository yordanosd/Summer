# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

USERS = [
  {
    username: "George Peppard", first_name: "senhit", email: "senhita@yahoo.com", id:1,
    password_digest: BCrypt::Password.create("SenhitPassword"), account_manager: true, photo_url: "http://ia.media-imdb.com/images/M/MV5BMTY1OTczNDE2NF5BMl5BanBnXkFtZTcwMTY5Mzg3Mw@@._V1_UX214_CR0,0,214,317_AL_.jpg"
  },
  {
    username: "Mr. T", first_name: "Ebony", email: "ebony@yahoo.com", id:2,
    password_digest: BCrypt::Password.create("EbonyPassword"), account_manager: false, photo_url: "http://ia.media-imdb.com/images/M/MV5BMTQ5Nzg2MTgwMl5BMl5BanBnXkFtZTcwNTA0NjcxMw@@._V1_UY317_CR0,0,214,317_AL_.jpg"
  }
]

USERS.each do |user|
  User.create(user)
end

WEIGHTS = [
  {
    weight: 111, user_id: 1, record_date: "2016-05-12 21:13:24 -0700"
  },
  {
    weight: 222, user_id: 3, record_date: "2016-05-12 21:13:24 -0700"
  },
  {
    weight: 111, user_id: 1, record_date: "2016-05-19 21:13:24 -0700"
  },
  {
    weight: 222, user_id: 3, record_date: "2016-05-19 21:13:24 -0700"
  },
  {
    weight: 110, user_id: 1, record_date: "2016-05-26 21:13:24 -0700"
  },
  {
    weight: 220, user_id: 3, record_date: "2016-05-26 21:13:24 -0700"
  }
]

WEIGHTS.each do |weight|
  Weight.create(weight)
end
