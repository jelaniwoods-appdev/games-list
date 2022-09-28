# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

game_list = List.find_or_create_by(
  name: 'Games to Play'
)

Rails.logger.debug game_list.errors.full_messages

game_list.games.find_or_create_by(
  name: 'Life Is Strange: True Colors',
  description: '3rd mainlane LiS game. Has at least one lesbien in it',
  image: 'https://assets-prd.ignimgs.com/2021/03/18/live-is-strange-true-colors-button-fin-1616099243808.jpg',
  video_trailer: 'https://www.youtube.com/watch?v=PNt1aSkYfWk'
)

game_list.games.find_or_create_by(
  name: 'GRIS',
  description: 'Very pretty water color-style 2D platformer game with emotional soundtrack.',
  image: 'https://assets1.ignimgs.com/2018/12/13/gris---button-fin-1544668050321.jpg',
  video_trailer: 'https://www.youtube.com/watch?v=BRiKQIVo7ao'
)

game_list.games.find_or_create_by(
  name: 'Stray',
  description: 'Be a cat in a post-apocalyptic Sci-Fi game.',
  image: 'https://gamingbolt.com/wp-content/uploads/2021/07/Stray.jpg',
  video_trailer: 'https://www.youtube.com/watch?v=kJawWyRUOBM'
)

game_list.games.find_or_create_by(
  name: 'Little Nightmares',
  description: "You're a small child in a scary place.",
  image: 'https://assets2.ignimgs.com/2016/08/17/little-nightmares-button-2jpg-fe4425.jpg',
  video_trailer: 'https://www.youtube.com/watch?v=aOadxZBsPiA'
)

game_list.games.find_or_create_by(
  name: 'Road 96',
  description: 'Procedurally generated, rougue-like game with a Life is Strage-type feel.',
  image: 'https://assets-prd.ignimgs.com/2020/12/11/road-96-button-01-1607651273036.jpg',
  video_trailer: 'https://www.youtube.com/watch?v=W5ZfH-fbqIQ'
)

game_list.games.find_or_create_by(
  name: 'Inside',
  description: 'Spiritual successor to Limbo',
  image: 'https://assets1.ignimgs.com/vid/thumbnails/user/2014/06/09/Iniside_THUMB_large.jpg',
  video_trailer: 'https://www.youtube.com/watch?v=yDm6PAgNohU'
)

game_list.games.find_or_create_by(
  name: 'Later Alligator',
  description: 'Made by some funny and nice people.',
  image: 'https://cdn.cloudflare.steamstatic.com/steam/apps/966320/capsule_616x353.jpg?t=1599933114',
  video_trailer: 'https://www.youtube.com/watch?v=YbmKuBrDhow'
)

game_list.games.find_or_create_by(
  name: 'Paradise Killer',
  description: 'Open world, murder mystery game.',
  image: 'https://assets-prd.ignimgs.com/2020/08/25/paradise-killer-button-fin-1598372235625.jpg',
  video_trailer: 'https://www.youtube.com/watch?v=ukpbuXpCT1s'
)

game_list.games.find_or_create_by(
  name: 'Oxenfree II',
  description: '👀 not out yet',
  image: 'https://sm.ign.com/t/ign_pl/screenshot/default/51357380588-fc0ede2f2e-h_7bwz.2560.jpg',
  video_trailer: 'https://www.youtube.com/watch?v=LH8dYVPVxfM'
)

game_list.games.find_or_create_by(
  name: 'Say No! More',
  description: 'Seems funny.',
  image: 'https://i1.wp.com/thegeekiary.com/wp-content/uploads/2021/04/SayNoMore-Keyart-1920x1080-1.png?resize=1536%2C864&ssl=1',
  video_trailer: 'https://www.youtube.com/watch?v=hRKUHOuI-rA'
)

game_list.games.find_or_create_by(
  name: 'The Quarry',
  description: 'Large horror game with celebs.',
  image: 'https://upload.wikimedia.org/wikipedia/en/a/a1/The_Quarry_cover_art.png',
  video_trailer: 'https://www.youtube.com/watch?v=Zh2K7SxRHmo'
)

game_list.games.find_or_create_by(
  name: 'Subway Midnight',
  description: "2D horror game. Crayon-like graphics. You're trapped on a ghost train.",
  image: 'https://steamrip.com/wp-content/uploads/2021/10/subway-midnight-free-download-preinstalled-steamrip.jpg',
  video_trailer: 'https://www.youtube.com/watch?v=pHeiyenYcaY'
)

Rails.logger.debug game_list.games.map(&:position)
Rails.logger.debug game_list.games.count
