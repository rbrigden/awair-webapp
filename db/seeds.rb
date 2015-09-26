# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


locales = Locale.create([{city: 'Pittsburgh', state: 'PA', img_url: 'http://www.ams-net.org/pittsburgh/img/pittsburgh-arial.jpg'}, #=> 94101
						 {city: 'San Francisco', state: 'CA', img_url: 'http://static1.squarespace.com/static/547f29bfe4b0dc192ed7bdac/54aeb15ce4b018c14f34c7cb/54aeb160e4b018c14f34c7ed/1420734817363/san-franc.jpg?format=2500w'}, #=> 15201
						 {city: 'Boston', state: 'MA', img_url: 'http://www.massvacation.com/wp-content/uploads/2013/06/1_boston__0000_istock_000011012295large.jpg'},
						 {city:	'New York', state: 'NY', img_url: 'https://upload.wikimedia.org/wikipedia/commons/4/47/New_york_times_square-terabass.jpg'},
						 {city: 'Philadelphia', state: 'PA', img_url: 'http://photos.visitphilly.com/philadelphia-skyline-art-museum-aerial-1800VP.jpg'},
						 {city: 'Los Angeles', state: 'CA', img_url: 'http://www.discovercaliforniawines.com/wp-content/uploads/2011/06/bg_Los_Angeles_County.png'}, #=>
						 {city: 'Chicago', state: 'IL', img_url: 'http://www.ccfa.org/assets/images/chapter-images/illinois/chicago-skyline.jpg'},
						 {city: 'Portland', state: 'OR', img_url: 'https://images.trvl-media.com/media/content/shared/images/travelguides/destination/178299/Portland-20917.jpg'}])

text = 'this is a message about life. life subsists on coffee. coffee is life. coffee is 42'

# test_messages = Message.create([{body:text, transcribed_at: Time.zone.now, message_type: 'fire', locale: Locale.where({city:'Pittsburgh'}).first},
# 								{body:text, transcribed_at: Time.zone.now, message_type: 'gunshot', locale: Locale.where({city:'Pittsburgh'}).first},
# 								{body:text, transcribed_at: Time.zone.now, message_type: 'ems', locale: Locale.where({city:'Pittsburgh'}).first},
# 								{body:text, transcribed_at: Time.zone.now, message_type: 'police', locale: Locale.where({city:'Pittsburgh'}).first}
									])