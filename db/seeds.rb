# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

puts 'Seeding the database...'

PEOPLE_COUNT = 5

if Person.count < PEOPLE_COUNT
  n = PEOPLE_COUNT - Person.count
  puts "Creating #{n} People..."
  n.times do
    Person.create(
      name: Faker::Artist.name
    )
  end
end

# Contrived models, here, folks, for the sake of the codin' exercise 🙃

POST_COUNT = 10
AUTHOR_COUNT = 5
COMMENT_COUNT = 50

if Author.count < AUTHOR_COUNT
  n = AUTHOR_COUNT - Author.count
  puts "Creating #{n} Authors..."
  n.times do
    Author.create(
      name: Faker::Book.author
    )
  end
end

if Post.count < POST_COUNT
  n = POST_COUNT - Post.count
  puts "Creating #{n} Posts..."
  n.times do
    Post.create(
      title: [
        Faker::Quote.robin,
        Faker::Quote.singular_siegler
      ].sample,
      content: [
        Faker::Quote.famous_last_words,
        Faker::Quotes::Shakespeare.king_richard_iii_quote,
        Faker::Quote.matz
      ].sample,
      author: Author.all.sample
    )
  end
end

if Comment.count < COMMENT_COUNT
  n = COMMENT_COUNT - Comment.count
  puts "Creating #{n} Comment..."
  n.times do
    Comment.create(
      content: [
        Faker::TvShows::MichaelScott.quote,
        Faker::TvShows::SiliconValley.quote,
        Faker::TvShows::SiliconValley.motto,
        Faker::TvShows::HowIMetYourMother.quote,
        Faker::TvShows::NewGirl.quote,
        Faker::TvShows::Seinfeld.quote,
        Faker::TvShows::TheITCrowd.quote
      ].sample,
      author: Author.all.sample,
      post: Post.all.sample
    )
  end
end
