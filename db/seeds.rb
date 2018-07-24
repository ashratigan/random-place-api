# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'places.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Place.new
  t.city = row['city']
  t.city_ascii = row['city_ascii']
  t.lat = row['lat']
  t.lng = row['lng']
  t.pop = row['pop']
  t.country = row['country']
  t.iso2 = row['iso2']
  t.iso3 = row['iso3']
  t.province = row['province']
  t.save
  puts "#{t.city}, #{t.city} saved"
end

puts "There are now #{Place.count} rows in the transactions table"