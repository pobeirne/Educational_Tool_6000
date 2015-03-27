# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



#1
User.create(email: 'admin@outlook.ie', password: '12345678', password_confirmation: '12345678')
#2
User.create(email: 'pobeirne@outlook.ie', password: '12345678', password_confirmation: '12345678')


#1
Level.create(name: 'beginner' , description: 'knows nothing')
#2
Level.create(name: 'intermediate' , description: 'knows something')
#3
Level.create(name: 'advanced' , description: 'knows a lot')


Profile.create(user_name: 'Administrator', description: 'lecturer', avatar_url: 'https://www.science.unsw.edu.au/files/news/527C868C9284958A22F9E4D448BDDA12.JPG', 
               college_name: 'National College Of Ireland', course_name: 'BSHC', year: '4', level_id: '3', user_id: '1')
           
Profile.create(user_name: 'Paul OBeirne', description: 'Cool guy', avatar_url: 'https://www.science.unsw.edu.au/files/news/527C868C9284958A22F9E4D448BDDA12.JPG', 
               college_name: 'National College Of Ireland', course_name: 'BSHC', year: '4', level_id: '1', user_id: '2')



