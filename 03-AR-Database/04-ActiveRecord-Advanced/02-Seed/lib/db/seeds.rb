require_relative '../config/application'
require_relative '../models/post'
require_relative '../models/user'

require 'faker'
require 'nokogiri'
require 'open-uri'

puts 'Seeding database...'

# TODO: Your code goes here
# 1. create fake users
# 2. Scrape news from https://news.ycombinator.com/ and associate posts to your existing users

User.create(
  name: Faker::Name.name,
  email: Faker::Internet.email)


data_origin = ENV['from'] || 'local file'
data_url    = 'https://news.ycombinator.com/'


puts "Seeding data for Rock en Seine, based on #{data_url}. Let's rock the party!"
puts '-'*50



